#ifndef _TRACE_LOG_H
#define _TRACE_LOG_H

#include <stdint.h>
#include <stdbool.h>
#include "esp_err.h"
#include "sdkconfig.h"
#include "string.h"

#if CONFIG_MICROROS_TRACE

typedef struct 
{
    char *tt1;
    uint32_t tt2;
    // uint32_t fun_count;
    char *fun_name[];
} trace_log_conf;

typedef struct 
{
    uint32_t trace_log_fun_addr;

    char *trace_log_file_name;
    uint32_t trace_log_fun_name;
    uint32_t trace_log_line;
    uint32_t trace_log_core_id;
} trace_log_info;

typedef struct {
    // trace_log_info tli;    
    uint32_t counter;
    uint32_t trace_time [128][2];
} trace_log;

esp_err_t trace_conf_init();
esp_err_t trace_conf_show();

esp_err_t trace_log_init();

esp_err_t trace_log_start(char *name);
esp_err_t trace_log_stop(char *name);

esp_err_t trace_log_show();


#endif //CONFIG_MICROROS_TRACE

#endif


