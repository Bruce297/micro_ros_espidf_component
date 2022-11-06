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

static const char *TAG = "TRACE";

#define BLINK_GPIO 48

static void configure_led(void);
static void blink_led(void);

static uint8_t s_led_state = 0;

uint64_t cb_time_1 = 0;
uint64_t cb_time_2 = 0;

void Task1(void *pvParameters) {
  //在这里可以添加一些代码，这样的话这个任务执行时会先执行一次这里的内容（当然后面进入while循环之后不会再执行这部分了）
  while(1)
  {
    vTaskDelay(200);
    printf("PRO_CPU正在运行：");
    printf("core id:%d\n",xPortGetCoreID());
    
    blink_led();
  }
}
 
void Task2(void *pvParameters) {
  while(1)
  {
    vTaskDelay(200);
    printf("APP_CPU正在运行：");
    printf("core id:%d\n",xPortGetCoreID());
 
  }
}

void app_main(void)
{

  /* Configure the peripheral according to the LED type */
  configure_led();

  xTaskCreatePinnedToCore(Task1, "Task1", 10000, NULL, 1, NULL,  0);  
  //最后一个参数至关重要，决定这个任务创建在哪个核上.PRO_CPU 为 0, APP_CPU 为 1,或者 tskNO_AFFINITY 允许任务在两者上运行.
  xTaskCreatePinnedToCore(Task2, "Task2", 10000, NULL, 1, NULL,  1);// 
  
    // while (1) {
    //     blink_led();
    //     // uint64_t t1 = esp_timer_get_time();
    //     vTaskDelay(100);

    // }
}

static void blink_led(void)
{
    gpio_set_level(BLINK_GPIO, s_led_state);
    s_led_state = !s_led_state;
    vTaskDelay(1);
    ESP_LOGI(TAG, "led blink function: %s,%s,%d",__FILE__,__func__, __LINE__);
    ESP_LOGI(TAG, "code id: %d",xPortGetCoreID());
}

static void configure_led(void)
{
    ESP_LOGI(TAG, "Example configured to blink GPIO LED!");
    gpio_reset_pin(BLINK_GPIO);
    /* Set the GPIO as a push/pull output */
    gpio_set_direction(BLINK_GPIO, GPIO_MODE_OUTPUT);
}