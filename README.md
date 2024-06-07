# ELUNA-wow3.3.5-CharactersArrival EN

This is an ELUNA script for  Azerotcore, utilizing the latest Eluna Lua Engine or Lua modules. The Lua script uses webhooks to transfer information about connected characters to a specified Discord channel. It is compatible with Trinity Core, Mango, and similar cores.

![image](https://github.com/saligin/-ELUNA--wow3.3.5-CharactersArrival/blob/main/images/dsbb.png)

## Setup Instructions

### 1. Discord Webhook Setup
- First, create a webhook on your Discord server.
  - Follow this [link](/images/1.png) for instructions.
  - Additionally, refer to the second image [here](/images/2.png).
  - Copy the webhook URL from the last image [here](/images/3.png).

### 2. Bot Setup
- Modify the Lua script `CharactersArrival.lua`:
  - Replace `Replace` with your webhook URL.
    - Lua:
      ```lua
      local playerJoinWebhookURL = "Replace" -- Your Discord webhook link

      local language = "enUS" -- Set the language to "ruRU" or "enUS"

      local porterAvatarURL = "Replace" -- Link to the image for your bot
      ```

### 4. Installation
- Place the `CharactersArrival.lua` file in your `Core/lua_scripts` folder.

### 5. Completion of Setup
- Reload the server or use the command `.reload eluna`.
- Information about characters entering the world will be automatically sent to the specified Discord channel.

## Confirmation

Feel free to reach out for assistance or feedback!

# ELUNA-wow3.3.5-CharactersArrival RUS

Это скрипт ELUNA для Azerotcore, использующий новейший движок Eluna Lua Engine или модули Lua. Скрипт Lua использует вебхуки для передачи информации о подключившихся персонажах на указанный канал Discord. Он совместим с Trinity Core, Mango и другими подобными ядрами.

![image](https://github.com/saligin/-ELUNA--wow3.3.5-CharactersArrival/blob/main/images/dsbb.png)

## Инструкции по настройке

### 1. Настройка вебхука Discord
- Сначала создайте вебхук на своем сервере Discord.
  - Перейдите по этой [ссылке](/images/1.png) для получения инструкций.
  - Кроме того, обратитесь ко второму изображению [здесь](/images/2.png).
  - Скопируйте URL-адрес вебхука с последнего изображения [здесь](/images/3.png).

### 2. Настройка бота
- Измените скрипт Lua `CharactersArrival.lua`:
  - Замените `Replace` на ваш URL-адрес веб-перехватчика.
    - Lua:
      ```lua
			local playerJoinWebhookURL = "Заменить - Replace" -- Ссылка на ваш Discord webhook 

			local language = "ruRU" -- Установите язык на "ruRU" или "enUS"

			local porterAvatarURL = "Заменить - Replace" -- Ссылка на изображение для вашего бота
      ```

### 4. Установка
- Поместите `CharactersArrival.lua` файл в свою `Core/lua_scripts` папку.

### 5. Завершение настройки
- Перезагрузите сервер или используйте команду `.reload eluna`.
- Информация о персонажах, зашедших в мир, будет автоматически передаваться на указанный канал Discord.

## Подтверждение

Не стесняйтесь обращаться за помощью или отзывами!
