FLATOUT ZERO GAME FOR STM32F0xx
Подключение внешней периферии
Энкодер
Питание -> 3V
A1, A0
Кнопка
B2
Дисплей
GND -> GND
VCC -> 3V
SCL -> B10
SDA -> B11
Пьезодинамик
GND
A5

Прошивка
Загрузите game.bin, подключите собранную плату и выполните команду:

   st-flash write game.bin 0x08000000
   
Благодарность
Лектору и менторам курса по STM32 от Студсовета ФРТК, МФТИ

Репозиторий курса: GitHub