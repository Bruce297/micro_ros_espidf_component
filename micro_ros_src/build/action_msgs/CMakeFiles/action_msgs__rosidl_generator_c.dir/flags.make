# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# compile C with /home/xu/.espressif/tools/xtensa-esp32-elf/esp-2021r2-patch5-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc
C_DEFINES = -DESP_PLATFORM -DLWIP_IPV4 -DLWIP_IPV6 -DPLATFORM_NAME_FREERTOS -DROS_PACKAGE_NAME=\"action_msgs\"

C_INCLUDES = -I/home/xu/esp/test/micro_ros_espidf_component/examples/int32_sub_pub/build/config -I/home/xu/esp/v4.4/esp-idf/components/newlib/platform_include -I/home/xu/esp/v4.4/esp-idf/components/freertos/include -I/home/xu/esp/v4.4/esp-idf/components/freertos/xtensa/include -I/home/xu/esp/v4.4/esp-idf/components/freertos/port/xtensa/include -I/home/xu/esp/v4.4/esp-idf/components/esp_hw_support/include -I/home/xu/esp/v4.4/esp-idf/components/hal/include -I/home/xu/esp/v4.4/esp-idf/components/hal/esp32/include -I/home/xu/esp/v4.4/esp-idf/components/heap/include -I/home/xu/esp/v4.4/esp-idf/components/log/include -I/home/xu/esp/v4.4/esp-idf/components/lwip/include/apps -I/home/xu/esp/v4.4/esp-idf/components/lwip/include/apps/sntp -I/home/xu/esp/v4.4/esp-idf/components/lwip/lwip/src/include -I/home/xu/esp/v4.4/esp-idf/components/lwip/port/esp32/include -I/home/xu/esp/v4.4/esp-idf/components/lwip/port/esp32/include/arch -I/home/xu/esp/v4.4/esp-idf/components/lwip/port/esp32/tcp_isn -I/home/xu/esp/v4.4/esp-idf/components/soc/src/esp32/. -I/home/xu/esp/v4.4/esp-idf/components/soc/src/esp32/include -I/home/xu/esp/v4.4/esp-idf/components/soc/include -I/home/xu/esp/v4.4/esp-idf/components/soc/esp32/include -I/home/xu/esp/v4.4/esp-idf/components/esp_rom/include -I/home/xu/esp/v4.4/esp-idf/components/esp_common/include -I/home/xu/esp/v4.4/esp-idf/components/esp_system/include -I/home/xu/esp/v4.4/esp-idf/components/xtensa/include -I/home/xu/esp/v4.4/esp-idf/components/xtensa/esp32/include -I/home/xu/esp/v4.4/esp-idf/components/esp32/include -I/home/xu/esp/v4.4/esp-idf/components/driver/include -I/home/xu/esp/v4.4/esp-idf/components/driver/esp32/include -I/home/xu/esp/v4.4/esp-idf/components/esp_ringbuf/include -I/home/xu/esp/v4.4/esp-idf/components/efuse/include -I/home/xu/esp/v4.4/esp-idf/components/efuse/esp32/include -I/home/xu/esp/v4.4/esp-idf/components/espcoredump/include -I/home/xu/esp/v4.4/esp-idf/components/esp_timer/include -I/home/xu/esp/v4.4/esp-idf/components/esp_ipc/include -I/home/xu/esp/v4.4/esp-idf/components/soc/soc/esp32/include -I/home/xu/esp/v4.4/esp-idf/components/soc/soc/esp32/../include -I/home/xu/esp/v4.4/esp-idf/components/soc/soc/esp32/private_include -I/home/xu/esp/v4.4/esp-idf/components/vfs/include -I/home/xu/esp/v4.4/esp-idf/components/esp_wifi/include -I/home/xu/esp/v4.4/esp-idf/components/esp_wifi/esp32/include -I/home/xu/esp/v4.4/esp-idf/components/esp_event/include -I/home/xu/esp/v4.4/esp-idf/components/esp_netif/include -I/home/xu/esp/v4.4/esp-idf/components/esp_eth/include -I/home/xu/esp/v4.4/esp-idf/components/tcpip_adapter/include -I/home/xu/esp/v4.4/esp-idf/components/app_trace/include -I/home/xu/esp/v4.4/esp-idf/components/mbedtls/port/include -I/home/xu/esp/v4.4/esp-idf/components/mbedtls/mbedtls/include -I/home/xu/esp/v4.4/esp-idf/components/mbedtls/esp_crt_bundle/include -I/home/xu/esp/v4.4/esp-idf/components/bootloader_support/include -I/home/xu/esp/v4.4/esp-idf/components/app_update/include -I/home/xu/esp/v4.4/esp-idf/components/spi_flash/include -I/home/xu/esp/v4.4/esp-idf/components/wpa_supplicant/include -I/home/xu/esp/v4.4/esp-idf/components/wpa_supplicant/port/include -I/home/xu/esp/v4.4/esp-idf/components/wpa_supplicant/include/esp_supplicant -I/home/xu/esp/v4.4/esp-idf/components/nvs_flash/include -I/home/xu/esp/v4.4/esp-idf/components/pthread/include -I/home/xu/esp/v4.4/esp-idf/components/perfmon/include -I/home/xu/esp/v4.4/esp-idf/components/asio/asio/asio/include -I/home/xu/esp/v4.4/esp-idf/components/asio/port/include -I/home/xu/esp/v4.4/esp-idf/components/cbor/port/include -I/home/xu/esp/v4.4/esp-idf/components/coap/port/include -I/home/xu/esp/v4.4/esp-idf/components/coap/port/include/coap -I/home/xu/esp/v4.4/esp-idf/components/coap/libcoap/include -I/home/xu/esp/v4.4/esp-idf/components/coap/libcoap/include/coap2 -I/home/xu/esp/v4.4/esp-idf/components/console -I/home/xu/esp/v4.4/esp-idf/components/nghttp/port/include -I/home/xu/esp/v4.4/esp-idf/components/nghttp/nghttp2/lib/includes -I/home/xu/esp/v4.4/esp-idf/components/esp-tls -I/home/xu/esp/v4.4/esp-idf/components/esp_adc_cal/include -I/home/xu/esp/v4.4/esp-idf/components/esp_gdbstub/include -I/home/xu/esp/v4.4/esp-idf/components/esp_hid/include -I/home/xu/esp/v4.4/esp-idf/components/tcp_transport/include -I/home/xu/esp/v4.4/esp-idf/components/esp_http_client/include -I/home/xu/esp/v4.4/esp-idf/components/esp_http_server/include -I/home/xu/esp/v4.4/esp-idf/components/esp_https_ota/include -I/home/xu/esp/v4.4/esp-idf/components/protobuf-c/protobuf-c -I/home/xu/esp/v4.4/esp-idf/components/protocomm/include/common -I/home/xu/esp/v4.4/esp-idf/components/protocomm/include/security -I/home/xu/esp/v4.4/esp-idf/components/protocomm/include/transports -I/home/xu/esp/v4.4/esp-idf/components/mdns/include -I/home/xu/esp/v4.4/esp-idf/components/esp_local_ctrl/include -I/home/xu/esp/v4.4/esp-idf/components/sdmmc/include -I/home/xu/esp/v4.4/esp-idf/components/esp_serial_slave_link/include -I/home/xu/esp/v4.4/esp-idf/components/esp_websocket_client/include -I/home/xu/esp/v4.4/esp-idf/components/expat/expat/expat/lib -I/home/xu/esp/v4.4/esp-idf/components/expat/port/include -I/home/xu/esp/v4.4/esp-idf/components/wear_levelling/include -I/home/xu/esp/v4.4/esp-idf/components/fatfs/diskio -I/home/xu/esp/v4.4/esp-idf/components/fatfs/vfs -I/home/xu/esp/v4.4/esp-idf/components/fatfs/src -I/home/xu/esp/v4.4/esp-idf/components/freemodbus/common/include -I/home/xu/esp/v4.4/esp-idf/components/idf_test/include -I/home/xu/esp/v4.4/esp-idf/components/idf_test/include/esp32 -I/home/xu/esp/v4.4/esp-idf/components/jsmn/include -I/home/xu/esp/v4.4/esp-idf/components/json/cJSON -I/home/xu/esp/v4.4/esp-idf/components/libsodium/libsodium/src/libsodium/include -I/home/xu/esp/v4.4/esp-idf/components/libsodium/port_include -I/home/xu/esp/v4.4/esp-idf/components/mqtt/esp-mqtt/include -I/home/xu/esp/v4.4/esp-idf/components/openssl/include -I/home/xu/esp/v4.4/esp-idf/components/spiffs/include -I/home/xu/esp/v4.4/esp-idf/components/ulp/include -I/home/xu/esp/v4.4/esp-idf/components/unity/include -I/home/xu/esp/v4.4/esp-idf/components/unity/unity/src -I/home/xu/esp/v4.4/esp-idf/components/wifi_provisioning/include -I/home/xu/esp/v4.4/esp-idf/components/freertos/include/esp_additions/freertos -I/home/xu/esp/v4.4/esp-idf/components/freertos/include/esp_additions -I/home/xu/esp/v4.4/esp-idf/components/esp_hw_support/include/soc -I/home/xu/esp/v4.4/esp-idf/components/esp_hw_support/include/soc/esp32 -I/home/xu/esp/v4.4/esp-idf/components/esp_hw_support/port/esp32/. -I/home/xu/esp/test/micro_ros_espidf_component/micro_ros_src/build/action_msgs/rosidl_generator_c -isystem /home/xu/esp/test/micro_ros_espidf_component/micro_ros_src/install/include/builtin_interfaces -isystem /home/xu/esp/test/micro_ros_espidf_component/micro_ros_src/install/include/rosidl_runtime_c -isystem /home/xu/esp/test/micro_ros_espidf_component/micro_ros_src/install/include/rcutils -isystem /home/xu/esp/test/micro_ros_espidf_component/micro_ros_src/install/include/rosidl_typesupport_interface -isystem /home/xu/esp/test/micro_ros_espidf_component/micro_ros_src/install/include/unique_identifier_msgs

C_FLAGS = -mlongcalls -Wno-frame-address  -ffunction-sections -fdata-sections -O3 -DNDEBUG -Wall -std=gnu11

