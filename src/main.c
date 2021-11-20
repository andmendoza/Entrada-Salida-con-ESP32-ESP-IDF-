

/*Se deberá implementar un cronómetro con la funcionalidad vista en clase. En concreto:
    Contará únicamente minutos y segundos.
    Dispondrá de una entrada Start/Stop que comienza/para el cronómetro.
        • Se implementará usando el TouchSensor configurado por interrupciones.
    Dispondrá de una entrada Reset que pondrá a 0 la cuenta y parará el cronómetro.
        • Se implementará muestreando el sensor de efecto Hall. Cuando supere un umbral, se
           considerará activo.
    Se configurará un timer (alta resolución) para llevar la cuenta de los segundos transcurridos
        • A cada vencimiento del timer, se modificará el valor del tiempo transcurrido si el
          cronómetro está en marcha.
    Se imprimirá la cuenta (minutos:segundos) cada seg
*/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdarg.h>
#include <pthread.h>

#include "sdkconfig.h"


#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/queue.h"


esp_timer_handle_t

esp_timer_create()


void app_main() {

    int start = 1;
    int stop = 1;
    int activar_start = 1;
    int activar_stop = 0;
    int activar_incremento = 0; //detener el contador inicializamos en cero para que cunado active comienza a contar cuando se activa el boton de inicio
    int min = 0, seg = 0;
//*******************************************CRONOMETRO****************************************
    if (start == 0){
        if (activar_start == 1){
            seg ++ ;

            if (seg == 60){
                seg = 0;
                min ++;
            }
        }
    }
    
    
    
    
    while (1)
    {
        seg ++ ;
        if (seg == 60){
            seg = 0;
            min ++;
            if(min == 60){
                min = 0;
            }
        }
        //system("cls");
        printf("\t\t [%.2d: %2.d:]", min, seg);
        //sleep(1);
        //seg ++;
    }
    



}