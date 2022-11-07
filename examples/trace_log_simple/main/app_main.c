#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include "sdkconfig.h"
#include "esp_log.h"
#include "esp_err.h"
#include <string.h>
#include "esp_timer.h"

#include "esp_app_trace.h"

#include "trace_log.h"

static const char *TAG = "TRACE_test";

#define BLINK_GPIO 48
#define BLINK_GPIO2 47

static void configure_led(void);
static void blink_led1(void);
static void blink_led2(void);

static uint8_t s_led_state = 0;

void app_main(void)
{
    // ttt();
    vTaskDelay(1);
    trace_conf_init();
    trace_conf_show();

    configure_led();
    int cc = 5;
    int flag = 0;
    while (cc--) {
        if(flag == 0) {
            blink_led1();
            blink_led2();
            flag = 1;
        }
        else {
            blink_led2();
            blink_led1();
            flag = 0;
        }
        
        vTaskDelay(100);

    }
    trace_log_show();
    printf("\n\n");
    // trace_log_show_fun("blink_led1");
    trace_log_show_all();
}
    
static void blink_led1(void)
{
    trace_log_start(__func__);

    gpio_set_level(BLINK_GPIO, s_led_state);
    s_led_state = !s_led_state;
    // vTaskDelay(1);
    // ets_delay_us(1);
    // ESP_LOGI(TAG, "file:%s,func:%s,line:%d,core:%d",__FILE__,__func__, __LINE__,xPortGetCoreID());
    
    trace_log_stop(__func__);
}

static void blink_led2(void)
{
    trace_log_start(__func__);

    // gpio_set_level(BLINK_GPIO2, s_led_state);
    // s_led_state = !s_led_state;
    // vTaskDelay(2);
                                                                     
    trace_log_stop(__func__);
}

static void configure_led(void)
{
    trace_log_start(__func__);
    ESP_LOGI(TAG, "Example configured to blink GPIO LED!");
    gpio_reset_pin(BLINK_GPIO);
    gpio_set_direction(BLINK_GPIO, GPIO_MODE_OUTPUT);
    gpio_reset_pin(BLINK_GPIO2);
    gpio_set_direction(BLINK_GPIO2, GPIO_MODE_OUTPUT);
    vTaskDelay(1);
    trace_log_stop(__func__);
}

