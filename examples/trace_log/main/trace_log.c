#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include "sdkconfig.h"
#include "esp_log.h"

#include "esp_timer.h"

#include "trace_log.h"

static const char *TAG = "TRACE";

#define TRACE_DEFAULT_CONFIG() {\
    .tt1 = "jjj",\
    .tt2 = 666,\
}

const char *trace_list [] = {\
    "default",\
    "blink_led1",\
    "ttt",\
    "ttt",\
    "ttt",\
    "ttt",\
    "ttt",\
    "ttt",\
    "ttt",\
    "ttt",\
    "ttt",\
    "ttt",\
    "blink_led2",\
    "configure_led",\
    NULL\
};

static uint32_t count = 0;
// void trace_init(trace_log_conf tlc, uint32_t fun_id,...){
//     int tmp = 0;  
//     tmp = fun_id;  
//     va_list va_ptr;  
//     va_start(va_ptr,fun_id);  
//     printf("conf:%s, %d\n",tlc.tt1,tlc.tt2);
//     while (tmp > 0)  
//     {  
//         printf("%d,",tmp);
//         tmp =va_arg(va_ptr,uint32_t); 
//     }  
//     va_end(va_ptr);  
// }

trace_log tls[64] = {0};

trace_log_conf tlc = TRACE_DEFAULT_CONFIG();

esp_err_t trace_conf_init() {
    if(count != 0){
        ESP_LOGE(TAG,"the config has been set");
        return ESP_ERR_NO_MEM;
    }
    while(trace_list[count]!= NULL){
        tlc.fun_name[count] = trace_list[count];
        count ++;
    } 
    if(count >= 64){
        ESP_LOGE(TAG,"the fun count over");
        return ESP_ERR_NO_MEM;
    }
    // esp_timer_get_time();
    return ESP_OK;
}

esp_err_t trace_conf_show(){
    printf("%s\n",tlc.tt1);
    printf("%d\n",tlc.tt2);
    // printf("%d\n",tlc.fun_count);
    for(int i = 0; i < count; i++){
        printf("fun%d: %s\n",i, tlc.fun_name[i]);
    }
    return ESP_OK;
}

esp_err_t trace_log_start(char *name){
    for(int i = 0; i < count; i++){
        if(strcmp(name, tlc.fun_name[i]) == 0){
            tls[i].trace_time[tls[i].counter][0] = esp_timer_get_time();
            return ESP_OK;
        }           
    }
    ESP_LOGE(TAG,"the fun is not available to trace");
    return ESP_ERR_NO_MEM;
}

esp_err_t trace_log_stop(char *name){
    for(int i = 0; i < count; i++){
        if(strcmp(name, tlc.fun_name[i]) == 0){
            tls[i].trace_time[tls[i].counter][1] = esp_timer_get_time();
            tls[i].counter++;
            return ESP_OK;
        }           
    }
    ESP_LOGE(TAG,"the fun is not available to trace");
    return ESP_ERR_NO_MEM;
}


esp_err_t trace_log_show(){
    printf("id    name    time\n");
    for(int i = 0; i < count; i++){
        printf("%d  %s\n",i, tlc.fun_name[i]);
        for(int j = 0; j < tls[i].counter; j ++){
            printf("%d,%d--%d\n",\
            tls[i].trace_time[j][0],\
            tls[i].trace_time[j][1],\
            tls[i].trace_time[j][1] - tls[i].trace_time[j][0]\
            );
        }      
        printf("\n"); 
    }
    
    return ESP_OK;
}

void trace_test(){
    printf("hellllllll\n");
}
