#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "esp_timer.h"
#include "esp_log.h"
#include "esp_sleep.h"
#include "sdkconfig.h"

#include "driver/adc.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/queue.h"
#include "driver/gpio.h"

static const char* TAG = "Timer";


#define GPIO_INPUT_IO_0     33
#define GPIO_INPUT_IO_1     32
//or de 1 para cada pin que se quiera configurar
#define GPIO_INPUT_PIN_SEL  ((1ULL<<GPIO_INPUT_IO_0) | (1ULL<<GPIO_INPUT_IO_1))
#define ESP_INTR_FLAG_DEFAULT 0

int min = 0, seg = 0;

static xQueueHandle gpio_evt_queue = NULL;

static void IRAM_ATTR gpio_isr_handler(void* arg)
{
    uint32_t gpio_num = (uint32_t) arg;
    xQueueSendFromISR(gpio_evt_queue, &gpio_num, NULL);
    //printf("VAlo %d \n", gpio_num);
    
}

static void gpio_task_chronometer(void* arg)
{
    uint32_t io_num;
    //int min = 0, seg = 0;
    //int start = 1;   

    while (1){
        
        int start = 1;
        int activar_start = 1;
        //int sensor = sensorHall();
        //int sensor = 25;
        
        
        if(xQueueReceive(gpio_evt_queue, &io_num, portMAX_DELAY)) {
            //printf("GPIO[%d] intr, val: %d\n", io_num, gpio_get_level(io_num));           
            start = gpio_get_level(io_num);
            if ( start == 0 ){
                if ( activar_start == 1 ) // verificamos si el boton de inicio esta activado 
                {
                    seg ++ ;
                    //printf("seg %d \n", seg);
                    if ( seg == 60 ){
                        seg = 0;
                        min ++;
                        if(min == 60){
                            min = 0;
                        }
                    }
                }
                
            }
        }
        //vTaskDelay(100 / portTICK_RATE_MS);
        printf ("CHRONOMETER\t: min: %d, seg: %d \n", min, seg);
        
    }
}



static void periodic_timer_callback(void* arg) {
    int min = 0, seg = 0;
    while (1)
    {
        seg ++ ;
        //printf("seg %d \n", seg);
        if ( seg == 60 ){
            seg = 0;
            min ++;
            if(min == 60){
                min = 0;
            }
        }
        //int64_t time_since_boot = esp_timer_get_time();//devuelve timestamp el # de microsegundos desde el arranque
        //ESP_LOGI (TAG, "Periodic timer called, time since boot: %lld us \n",time_since_boot); 
        printf ("TIMER\t: min: %d, seg: %d \n", min, seg);
        vTaskDelay(1000 / portTICK_RATE_MS);
    }
}

static void timer (){
    const esp_timer_create_args_t periodic_timer_args = {
            .callback = &periodic_timer_callback,
            /* el nombre es opcional, pero puede ayudar a identificar el temporizador al depurar */
            .name = "periodic"
    };

    esp_timer_handle_t periodic_timer; // definimos la variable
    ESP_ERROR_CHECK(esp_timer_create(&periodic_timer_args, &periodic_timer));
    /* El temporizador se ha creado pero aún no se está ejecutando */
    /* Iniciar los temporizadores */
    ESP_ERROR_CHECK(esp_timer_start_periodic(periodic_timer, 100000));
    //vTaskDelay(500 / portTICK_PERIOD_MS);  
    ESP_LOGI(TAG, "Started timers, time since boot: %lld us", esp_timer_get_time());
    //Limpiar y terminar el ejemplo */
    //ESP_ERROR_CHECK(esp_timer_stop(periodic_timer));
    //ESP_ERROR_CHECK(esp_timer_delete(periodic_timer));    
    ESP_LOGI (TAG, " Temporizadores detenidos y eliminados " );
}


static void sensorHall(){
    /*
    Dispondrá de una entrada Reset que pondrá a 0 la cuenta y parará el cronómetro.
        • Se implementará muestreando el sensor de efecto Hall. Cuando supere un umbral, se
           considerará activo.
    */
    while(1){

        int hall = 0, umbral = 50;
        adc1_config_width(ADC_WIDTH_BIT_12);        
        hall = hall_sensor_read();
        //printf("Sensor Hall fuere del if %d \n", hall);       
        if (hall > umbral ){                        
            printf("Sensor Hall Activo %d \n", hall);
            min = 0;
            seg = 0;
        }
        vTaskDelay(500 / portTICK_RATE_MS);
    }
    
    
    
}



void app_main(void)
{
    //declaramos una variable para config el pin
    gpio_config_t io_conf;
    //tipo de iterrupcion
    //modo entrada o salida
    io_conf.intr_type = GPIO_PIN_INTR_POSEDGE;
    //Q pines queremos q afecte esta config
    io_conf.pin_bit_mask = GPIO_INPUT_PIN_SEL;    
    io_conf.mode = GPIO_MODE_INPUT;
    //habilitamos
    io_conf.pull_up_en = 1;
    gpio_config(&io_conf);
    //change gpio intrrupt type for one pin
    gpio_set_intr_type(GPIO_INPUT_IO_0, GPIO_INTR_ANYEDGE);
    //create a queue to handle gpio event from isr
    gpio_evt_queue = xQueueCreate(10, sizeof(uint32_t));
    //start gpio task
    xTaskCreate(gpio_task_chronometer, "gpio_task_chronometer", 2048, NULL, 10, NULL);
    //install gpio isr service
    gpio_install_isr_service(ESP_INTR_FLAG_DEFAULT);
    //hook isr handler for specific gpio pin
    gpio_isr_handler_add(GPIO_INPUT_IO_0, gpio_isr_handler, (void*) GPIO_INPUT_IO_0);
    //gpio_isr_handler_add(GPIO_INPUT_IO_1, gpio_isr_handler, (void*) GPIO_INPUT_IO_1);
    //remove isr handler for gpio number.
    gpio_isr_handler_remove(GPIO_INPUT_IO_0);
    //hook isr handler for specific gpio pin again
    gpio_isr_handler_add(GPIO_INPUT_IO_0, gpio_isr_handler, (void*) GPIO_INPUT_IO_0);

    //**************************************************************************************************************************************************
    timer();
    sensorHall();
    
}