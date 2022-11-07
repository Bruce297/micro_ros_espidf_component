#ifndef _TRACE_LOG_H
#define _TRACE_LOG_H

#include <stdint.h>
#include <stdbool.h>
#include "esp_err.h"
#include "sdkconfig.h"
#include "string.h"

#if CONFIG_MICROROS_TRACE

// typedef struct 
// {
//     char *tt1;
//     uint32_t tt2;
// } trace_log_conf;


typedef struct {
    char *fun_name;
    uint32_t time_start;
    uint32_t time_stop;
} trace_log;

typedef struct {
    char *fun_name;
    uint32_t count;
    uint32_t trace_time[128][2];
} trace_log_order;

esp_err_t trace_conf_init();
esp_err_t trace_conf_show();

esp_err_t trace_log_init();

esp_err_t trace_log_start(char *name);
esp_err_t trace_log_stop(char *name);

esp_err_t trace_log_show();
esp_err_t trace_log_show_fun(char *name);
esp_err_t trace_log_show_all();

#endif //CONFIG_MICROROS_TRACE

#endif


