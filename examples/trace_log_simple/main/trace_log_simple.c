#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include "sdkconfig.h"
#include "esp_log.h"

#include "esp_timer.h"

#include "trace_log_simple.h"

static const char *TAG = "TRACE";

#define TRACE_DEFAULT_CONFIG() {\
    .tt1 = "jjj",\
    .tt2 = 666,\
}

char *trace_list [] = {\
    "DEFAULT",\
    "blink_led1",\
    "tt1",\
    "tt2",\
    "blink_led2",\
    "configure_led",\
    NULL\
};

static uint32_t trace_count = 0;
static uint32_t fun_count = 0;
trace_log tls[512] = {0};
trace_log_order tlo[128] = {0};

// trace_log_conf tlc = TRACE_DEFAULT_CONFIG();

esp_err_t trace_conf_init() {
    // tls[0].fun_name = "default";
    // tlo[0].fun_name = "default";
    while(trace_list[fun_count] != NULL) {
        tlo[fun_count].fun_name = trace_list[fun_count];
        fun_count ++;
    }

    return ESP_OK;
}

esp_err_t trace_conf_show(){
    // printf("%s\n",tlc.tt1);
    // printf("%d\n",tlc.tt2);
    // tlo[0].fun_name = "de"
    for(int i = 0; i < fun_count; i++) {
        printf("%s\n", tlo[i].fun_name);
    }
    return ESP_OK;
}

esp_err_t trace_log_start(char *name){
    tls[trace_count].fun_name = name;
    tls[trace_count].time_start = esp_timer_get_time();
    return ESP_OK;
}

esp_err_t trace_log_stop(char *name){
    tls[trace_count].time_stop = esp_timer_get_time();
    trace_count ++;
    return ESP_OK;
}


esp_err_t trace_log_show(){
    printf("fun_name\ttime_start\ttime_stop\n");
    for(int i = 0; i < trace_count; i++){
        printf("%s\t%d\t\t%d\t\t%d\n",\
            tls[i].fun_name,    \
            tls[i].time_start,  \
            tls[i].time_stop,   \
            tls[i].time_stop - tls[i].time_start);
    }

    return ESP_OK;
}

esp_err_t trace_log_show_fun(char *name) {
    printf("fun_name:%s\n",name);

    for(int i = 0; i < trace_count; i++) {
        if(strcmp(tls[i].fun_name, name) == 0){
            printf("\t%d\t\t%d\t\t%d\n",\
                tls[i].time_start,  \
                tls[i].time_stop,   \
                tls[i].time_stop - tls[i].time_start);
        }
        
    }
    
    return ESP_OK;
}

esp_err_t trace_log_show_all() {
    for(int i = 0; i < fun_count; i++) {
        trace_log_show_fun(tlo[i].fun_name);
    }
    
    return ESP_OK;
}

void trace_test(){
    printf("hellllllll\n");
}
