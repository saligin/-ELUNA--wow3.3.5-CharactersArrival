# ELUNA-wow3.3.5-CharactersArrival

Это скрипт ELUNA для Trinity Core, использующий новейший движок Eluna Lua Engine или модули Lua. Скрипт Lua использует вебхуки для передачи информации о подключившихся персонажах на указанный канал Discord. Он совместим с Azerotcore, Mango и другими подобными ядрами.

![image](https://raw.githubusercontent.com/saligin/-ELUNA--wow3.3.5-Discord-AuctionHouseBot/main/diskordbot.PNG)

## Инструкции по настройке

### 1. Настройка вебхука Discord
- Сначала создайте вебхук на своем сервере Discord.
  - Перейдите по этой [ссылке](wow.zabgame.ru/files/1.png) для получения инструкций.
  - Кроме того, обратитесь ко второму изображению [здесь](wow.zabgame.ru/files/2.png).
  - Скопируйте URL-адрес вебхука с последнего изображения [здесь](wow.zabgame.ru/files/3.png).

### 2. Настройка бота
- Измените скрипт Lua `AuctionHouse_Bot.lua`:
  - Замените `YOUR_WEBHOOK_URL` на ваш URL-адрес веб-перехватчика.
    - Lua:
      ```lua
			local playerJoinWebhookURL = "Заменить - Replace" -- Ссылка на ваш Discord webhook | Your Discord webhook link

			local language = "ruRU" -- Установите язык на "ruRU" или "enUS" | Set the language to "ruRU" or "enUS"

			local porterAvatarURL = "Заменить - Replace" -- Ссылка на изображение для вашего бота | Link to the image for your bot
      ```

### 4. Установка
- Поместите `CharactersArrival.lua` файл в свою `Core/lua_scripts` папку.

### 5. Завершение настройки
- Перезагрузите сервер или используйте команду `.reload eluna`.
- Информация о персонажах, зашедших в мир, будет автоматически передаваться на указанный канал Discord.

## Подтверждение

Не стесняйтесь обращаться за помощью или отзывами!
