#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include "sdkconfig.h"
#include "esp_log.h"

#include "esp_timer.h"


static const char *TAG = "TRACE";

#define BLINK_GPIO 48

static void configure_led(void);
static void blink_led(void);

static uint8_t s_led_state = 0;

uint64_t cb_time_1 = 0;
uint64_t cb_time_2 = 0;

void app_main(void)
{
    /* Configure the peripheral according to the LED type */
    configure_led();

    while (1) {
        blink_led();

        uint64_t t1 = esp_timer_get_time();

        vTaskDelay(100);

		uint64_t t2 = esp_timer_get_time();

		// printf("time: %dus\n", (int)(t2 - t1));
        
        // printf("%x\n", (int)(&blink_led));
        // ESP_LOGI(TAG, "led blink function: %p", &blink_led);
        ESP_LOGI(TAG, "led blink function: %x", (uint32_t)(&blink_led));


    }
}

static void blink_led(void)
{
    gpio_set_level(BLINK_GPIO, s_led_state);
    s_led_state = !s_led_state;
    vTaskDelay(1);
}

static void configure_led(void)
{
    ESP_LOGI(TAG, "Example configured to blink GPIO LED!");
    gpio_reset_pin(BLINK_GPIO);
    /* Set the GPIO as a push/pull output */
    gpio_set_direction(BLINK_GPIO, GPIO_MODE_OUTPUT);
}