# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu/Work/ANIOT/EntradaSalida

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/Work/ANIOT/EntradaSalida/build

# Include any dependencies generated for this target.
include CMakeFiles/EntradaSalida.elf.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/EntradaSalida.elf.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/EntradaSalida.elf.dir/flags.make

project_elf_src.c:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ubuntu/Work/ANIOT/EntradaSalida/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating project_elf_src.c"
	/usr/bin/cmake -E touch /home/ubuntu/Work/ANIOT/EntradaSalida/build/project_elf_src.c

CMakeFiles/EntradaSalida.elf.dir/project_elf_src.c.obj: CMakeFiles/EntradaSalida.elf.dir/flags.make
CMakeFiles/EntradaSalida.elf.dir/project_elf_src.c.obj: project_elf_src.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/Work/ANIOT/EntradaSalida/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/EntradaSalida.elf.dir/project_elf_src.c.obj"
	/home/ubuntu/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/EntradaSalida.elf.dir/project_elf_src.c.obj   -c /home/ubuntu/Work/ANIOT/EntradaSalida/build/project_elf_src.c

CMakeFiles/EntradaSalida.elf.dir/project_elf_src.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/EntradaSalida.elf.dir/project_elf_src.c.i"
	/home/ubuntu/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/Work/ANIOT/EntradaSalida/build/project_elf_src.c > CMakeFiles/EntradaSalida.elf.dir/project_elf_src.c.i

CMakeFiles/EntradaSalida.elf.dir/project_elf_src.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/EntradaSalida.elf.dir/project_elf_src.c.s"
	/home/ubuntu/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/Work/ANIOT/EntradaSalida/build/project_elf_src.c -o CMakeFiles/EntradaSalida.elf.dir/project_elf_src.c.s

# Object files for target EntradaSalida.elf
EntradaSalida_elf_OBJECTS = \
"CMakeFiles/EntradaSalida.elf.dir/project_elf_src.c.obj"

# External object files for target EntradaSalida.elf
EntradaSalida_elf_EXTERNAL_OBJECTS =

EntradaSalida.elf: CMakeFiles/EntradaSalida.elf.dir/project_elf_src.c.obj
EntradaSalida.elf: CMakeFiles/EntradaSalida.elf.dir/build.make
EntradaSalida.elf: esp-idf/xtensa/libxtensa.a
EntradaSalida.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
EntradaSalida.elf: esp-idf/app_update/libapp_update.a
EntradaSalida.elf: esp-idf/spi_flash/libspi_flash.a
EntradaSalida.elf: esp-idf/bootloader_support/libbootloader_support.a
EntradaSalida.elf: esp-idf/efuse/libefuse.a
EntradaSalida.elf: esp-idf/driver/libdriver.a
EntradaSalida.elf: esp-idf/nvs_flash/libnvs_flash.a
EntradaSalida.elf: esp-idf/pthread/libpthread.a
EntradaSalida.elf: esp-idf/espcoredump/libespcoredump.a
EntradaSalida.elf: esp-idf/perfmon/libperfmon.a
EntradaSalida.elf: esp-idf/esp32/libesp32.a
EntradaSalida.elf: esp-idf/esp_common/libesp_common.a
EntradaSalida.elf: esp-idf/esp_rom/libesp_rom.a
EntradaSalida.elf: esp-idf/soc/libsoc.a
EntradaSalida.elf: esp-idf/esp_eth/libesp_eth.a
EntradaSalida.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
EntradaSalida.elf: esp-idf/esp_netif/libesp_netif.a
EntradaSalida.elf: esp-idf/esp_event/libesp_event.a
EntradaSalida.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
EntradaSalida.elf: esp-idf/esp_wifi/libesp_wifi.a
EntradaSalida.elf: esp-idf/lwip/liblwip.a
EntradaSalida.elf: esp-idf/log/liblog.a
EntradaSalida.elf: esp-idf/heap/libheap.a
EntradaSalida.elf: esp-idf/freertos/libfreertos.a
EntradaSalida.elf: esp-idf/vfs/libvfs.a
EntradaSalida.elf: esp-idf/newlib/libnewlib.a
EntradaSalida.elf: esp-idf/cxx/libcxx.a
EntradaSalida.elf: esp-idf/app_trace/libapp_trace.a
EntradaSalida.elf: esp-idf/asio/libasio.a
EntradaSalida.elf: esp-idf/cbor/libcbor.a
EntradaSalida.elf: esp-idf/coap/libcoap.a
EntradaSalida.elf: esp-idf/console/libconsole.a
EntradaSalida.elf: esp-idf/nghttp/libnghttp.a
EntradaSalida.elf: esp-idf/esp-tls/libesp-tls.a
EntradaSalida.elf: esp-idf/esp_adc_cal/libesp_adc_cal.a
EntradaSalida.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
EntradaSalida.elf: esp-idf/tcp_transport/libtcp_transport.a
EntradaSalida.elf: esp-idf/esp_http_client/libesp_http_client.a
EntradaSalida.elf: esp-idf/esp_http_server/libesp_http_server.a
EntradaSalida.elf: esp-idf/esp_https_ota/libesp_https_ota.a
EntradaSalida.elf: esp-idf/protobuf-c/libprotobuf-c.a
EntradaSalida.elf: esp-idf/protocomm/libprotocomm.a
EntradaSalida.elf: esp-idf/mdns/libmdns.a
EntradaSalida.elf: esp-idf/esp_local_ctrl/libesp_local_ctrl.a
EntradaSalida.elf: esp-idf/sdmmc/libsdmmc.a
EntradaSalida.elf: esp-idf/esp_serial_slave_link/libesp_serial_slave_link.a
EntradaSalida.elf: esp-idf/esp_websocket_client/libesp_websocket_client.a
EntradaSalida.elf: esp-idf/expat/libexpat.a
EntradaSalida.elf: esp-idf/wear_levelling/libwear_levelling.a
EntradaSalida.elf: esp-idf/fatfs/libfatfs.a
EntradaSalida.elf: esp-idf/freemodbus/libfreemodbus.a
EntradaSalida.elf: esp-idf/jsmn/libjsmn.a
EntradaSalida.elf: esp-idf/json/libjson.a
EntradaSalida.elf: esp-idf/libsodium/liblibsodium.a
EntradaSalida.elf: esp-idf/mqtt/libmqtt.a
EntradaSalida.elf: esp-idf/openssl/libopenssl.a
EntradaSalida.elf: esp-idf/spiffs/libspiffs.a
EntradaSalida.elf: esp-idf/ulp/libulp.a
EntradaSalida.elf: esp-idf/unity/libunity.a
EntradaSalida.elf: esp-idf/wifi_provisioning/libwifi_provisioning.a
EntradaSalida.elf: esp-idf/sdmmc/libsdmmc.a
EntradaSalida.elf: esp-idf/wear_levelling/libwear_levelling.a
EntradaSalida.elf: esp-idf/protocomm/libprotocomm.a
EntradaSalida.elf: esp-idf/protobuf-c/libprotobuf-c.a
EntradaSalida.elf: esp-idf/mdns/libmdns.a
EntradaSalida.elf: esp-idf/console/libconsole.a
EntradaSalida.elf: esp-idf/json/libjson.a
EntradaSalida.elf: esp-idf/xtensa/libxtensa.a
EntradaSalida.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
EntradaSalida.elf: esp-idf/app_update/libapp_update.a
EntradaSalida.elf: esp-idf/spi_flash/libspi_flash.a
EntradaSalida.elf: esp-idf/bootloader_support/libbootloader_support.a
EntradaSalida.elf: esp-idf/efuse/libefuse.a
EntradaSalida.elf: esp-idf/driver/libdriver.a
EntradaSalida.elf: esp-idf/nvs_flash/libnvs_flash.a
EntradaSalida.elf: esp-idf/pthread/libpthread.a
EntradaSalida.elf: esp-idf/espcoredump/libespcoredump.a
EntradaSalida.elf: esp-idf/perfmon/libperfmon.a
EntradaSalida.elf: esp-idf/esp32/libesp32.a
EntradaSalida.elf: esp-idf/esp_common/libesp_common.a
EntradaSalida.elf: esp-idf/esp_rom/libesp_rom.a
EntradaSalida.elf: esp-idf/soc/libsoc.a
EntradaSalida.elf: esp-idf/esp_eth/libesp_eth.a
EntradaSalida.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
EntradaSalida.elf: esp-idf/esp_netif/libesp_netif.a
EntradaSalida.elf: esp-idf/esp_event/libesp_event.a
EntradaSalida.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
EntradaSalida.elf: esp-idf/esp_wifi/libesp_wifi.a
EntradaSalida.elf: esp-idf/lwip/liblwip.a
EntradaSalida.elf: esp-idf/log/liblog.a
EntradaSalida.elf: esp-idf/heap/libheap.a
EntradaSalida.elf: esp-idf/freertos/libfreertos.a
EntradaSalida.elf: esp-idf/vfs/libvfs.a
EntradaSalida.elf: esp-idf/newlib/libnewlib.a
EntradaSalida.elf: esp-idf/cxx/libcxx.a
EntradaSalida.elf: esp-idf/app_trace/libapp_trace.a
EntradaSalida.elf: esp-idf/nghttp/libnghttp.a
EntradaSalida.elf: esp-idf/esp-tls/libesp-tls.a
EntradaSalida.elf: esp-idf/tcp_transport/libtcp_transport.a
EntradaSalida.elf: esp-idf/esp_http_client/libesp_http_client.a
EntradaSalida.elf: esp-idf/esp_http_server/libesp_http_server.a
EntradaSalida.elf: esp-idf/ulp/libulp.a
EntradaSalida.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
EntradaSalida.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
EntradaSalida.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/libcoexist.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/libcore.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/libpp.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/librtc.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/libphy.a
EntradaSalida.elf: esp-idf/xtensa/libxtensa.a
EntradaSalida.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
EntradaSalida.elf: esp-idf/app_update/libapp_update.a
EntradaSalida.elf: esp-idf/spi_flash/libspi_flash.a
EntradaSalida.elf: esp-idf/bootloader_support/libbootloader_support.a
EntradaSalida.elf: esp-idf/efuse/libefuse.a
EntradaSalida.elf: esp-idf/driver/libdriver.a
EntradaSalida.elf: esp-idf/nvs_flash/libnvs_flash.a
EntradaSalida.elf: esp-idf/pthread/libpthread.a
EntradaSalida.elf: esp-idf/espcoredump/libespcoredump.a
EntradaSalida.elf: esp-idf/perfmon/libperfmon.a
EntradaSalida.elf: esp-idf/esp32/libesp32.a
EntradaSalida.elf: esp-idf/esp_common/libesp_common.a
EntradaSalida.elf: esp-idf/esp_rom/libesp_rom.a
EntradaSalida.elf: esp-idf/soc/libsoc.a
EntradaSalida.elf: esp-idf/esp_eth/libesp_eth.a
EntradaSalida.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
EntradaSalida.elf: esp-idf/esp_netif/libesp_netif.a
EntradaSalida.elf: esp-idf/esp_event/libesp_event.a
EntradaSalida.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
EntradaSalida.elf: esp-idf/esp_wifi/libesp_wifi.a
EntradaSalida.elf: esp-idf/lwip/liblwip.a
EntradaSalida.elf: esp-idf/log/liblog.a
EntradaSalida.elf: esp-idf/heap/libheap.a
EntradaSalida.elf: esp-idf/freertos/libfreertos.a
EntradaSalida.elf: esp-idf/vfs/libvfs.a
EntradaSalida.elf: esp-idf/newlib/libnewlib.a
EntradaSalida.elf: esp-idf/cxx/libcxx.a
EntradaSalida.elf: esp-idf/app_trace/libapp_trace.a
EntradaSalida.elf: esp-idf/nghttp/libnghttp.a
EntradaSalida.elf: esp-idf/esp-tls/libesp-tls.a
EntradaSalida.elf: esp-idf/tcp_transport/libtcp_transport.a
EntradaSalida.elf: esp-idf/esp_http_client/libesp_http_client.a
EntradaSalida.elf: esp-idf/esp_http_server/libesp_http_server.a
EntradaSalida.elf: esp-idf/ulp/libulp.a
EntradaSalida.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
EntradaSalida.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
EntradaSalida.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/libcoexist.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/libcore.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/libpp.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/librtc.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/libphy.a
EntradaSalida.elf: esp-idf/xtensa/libxtensa.a
EntradaSalida.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
EntradaSalida.elf: esp-idf/app_update/libapp_update.a
EntradaSalida.elf: esp-idf/spi_flash/libspi_flash.a
EntradaSalida.elf: esp-idf/bootloader_support/libbootloader_support.a
EntradaSalida.elf: esp-idf/efuse/libefuse.a
EntradaSalida.elf: esp-idf/driver/libdriver.a
EntradaSalida.elf: esp-idf/nvs_flash/libnvs_flash.a
EntradaSalida.elf: esp-idf/pthread/libpthread.a
EntradaSalida.elf: esp-idf/espcoredump/libespcoredump.a
EntradaSalida.elf: esp-idf/perfmon/libperfmon.a
EntradaSalida.elf: esp-idf/esp32/libesp32.a
EntradaSalida.elf: esp-idf/esp_common/libesp_common.a
EntradaSalida.elf: esp-idf/esp_rom/libesp_rom.a
EntradaSalida.elf: esp-idf/soc/libsoc.a
EntradaSalida.elf: esp-idf/esp_eth/libesp_eth.a
EntradaSalida.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
EntradaSalida.elf: esp-idf/esp_netif/libesp_netif.a
EntradaSalida.elf: esp-idf/esp_event/libesp_event.a
EntradaSalida.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
EntradaSalida.elf: esp-idf/esp_wifi/libesp_wifi.a
EntradaSalida.elf: esp-idf/lwip/liblwip.a
EntradaSalida.elf: esp-idf/log/liblog.a
EntradaSalida.elf: esp-idf/heap/libheap.a
EntradaSalida.elf: esp-idf/freertos/libfreertos.a
EntradaSalida.elf: esp-idf/vfs/libvfs.a
EntradaSalida.elf: esp-idf/newlib/libnewlib.a
EntradaSalida.elf: esp-idf/cxx/libcxx.a
EntradaSalida.elf: esp-idf/app_trace/libapp_trace.a
EntradaSalida.elf: esp-idf/nghttp/libnghttp.a
EntradaSalida.elf: esp-idf/esp-tls/libesp-tls.a
EntradaSalida.elf: esp-idf/tcp_transport/libtcp_transport.a
EntradaSalida.elf: esp-idf/esp_http_client/libesp_http_client.a
EntradaSalida.elf: esp-idf/esp_http_server/libesp_http_server.a
EntradaSalida.elf: esp-idf/ulp/libulp.a
EntradaSalida.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
EntradaSalida.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
EntradaSalida.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/libcoexist.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/libcore.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/libpp.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/librtc.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/libphy.a
EntradaSalida.elf: esp-idf/xtensa/libxtensa.a
EntradaSalida.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
EntradaSalida.elf: esp-idf/app_update/libapp_update.a
EntradaSalida.elf: esp-idf/spi_flash/libspi_flash.a
EntradaSalida.elf: esp-idf/bootloader_support/libbootloader_support.a
EntradaSalida.elf: esp-idf/efuse/libefuse.a
EntradaSalida.elf: esp-idf/driver/libdriver.a
EntradaSalida.elf: esp-idf/nvs_flash/libnvs_flash.a
EntradaSalida.elf: esp-idf/pthread/libpthread.a
EntradaSalida.elf: esp-idf/espcoredump/libespcoredump.a
EntradaSalida.elf: esp-idf/perfmon/libperfmon.a
EntradaSalida.elf: esp-idf/esp32/libesp32.a
EntradaSalida.elf: esp-idf/esp_common/libesp_common.a
EntradaSalida.elf: esp-idf/esp_rom/libesp_rom.a
EntradaSalida.elf: esp-idf/soc/libsoc.a
EntradaSalida.elf: esp-idf/esp_eth/libesp_eth.a
EntradaSalida.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
EntradaSalida.elf: esp-idf/esp_netif/libesp_netif.a
EntradaSalida.elf: esp-idf/esp_event/libesp_event.a
EntradaSalida.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
EntradaSalida.elf: esp-idf/esp_wifi/libesp_wifi.a
EntradaSalida.elf: esp-idf/lwip/liblwip.a
EntradaSalida.elf: esp-idf/log/liblog.a
EntradaSalida.elf: esp-idf/heap/libheap.a
EntradaSalida.elf: esp-idf/freertos/libfreertos.a
EntradaSalida.elf: esp-idf/vfs/libvfs.a
EntradaSalida.elf: esp-idf/newlib/libnewlib.a
EntradaSalida.elf: esp-idf/cxx/libcxx.a
EntradaSalida.elf: esp-idf/app_trace/libapp_trace.a
EntradaSalida.elf: esp-idf/nghttp/libnghttp.a
EntradaSalida.elf: esp-idf/esp-tls/libesp-tls.a
EntradaSalida.elf: esp-idf/tcp_transport/libtcp_transport.a
EntradaSalida.elf: esp-idf/esp_http_client/libesp_http_client.a
EntradaSalida.elf: esp-idf/esp_http_server/libesp_http_server.a
EntradaSalida.elf: esp-idf/ulp/libulp.a
EntradaSalida.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
EntradaSalida.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
EntradaSalida.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/libcoexist.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/libcore.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/libpp.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/librtc.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_wifi/lib/esp32/libphy.a
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/xtensa/esp32/libhal.a
EntradaSalida.elf: esp-idf/newlib/libnewlib.a
EntradaSalida.elf: esp-idf/pthread/libpthread.a
EntradaSalida.elf: esp-idf/cxx/libcxx.a
EntradaSalida.elf: esp-idf/esp32/esp32_out.ld
EntradaSalida.elf: esp-idf/esp32/ld/esp32.project.ld
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp32/ld/esp32.peripherals.ld
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.newlib-time.ld
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.ld
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.libgcc.ld
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.newlib-data.ld
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.syscalls.ld
EntradaSalida.elf: /home/ubuntu/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.newlib-funcs.ld
EntradaSalida.elf: CMakeFiles/EntradaSalida.elf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/Work/ANIOT/EntradaSalida/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable EntradaSalida.elf"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/EntradaSalida.elf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/EntradaSalida.elf.dir/build: EntradaSalida.elf

.PHONY : CMakeFiles/EntradaSalida.elf.dir/build

CMakeFiles/EntradaSalida.elf.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/EntradaSalida.elf.dir/cmake_clean.cmake
.PHONY : CMakeFiles/EntradaSalida.elf.dir/clean

CMakeFiles/EntradaSalida.elf.dir/depend: project_elf_src.c
	cd /home/ubuntu/Work/ANIOT/EntradaSalida/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/Work/ANIOT/EntradaSalida /home/ubuntu/Work/ANIOT/EntradaSalida /home/ubuntu/Work/ANIOT/EntradaSalida/build /home/ubuntu/Work/ANIOT/EntradaSalida/build /home/ubuntu/Work/ANIOT/EntradaSalida/build/CMakeFiles/EntradaSalida.elf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/EntradaSalida.elf.dir/depend

