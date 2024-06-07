local playerJoinWebhookURL = "Заменить - Replace" -- Ссылка на ваш Discord webhook | Your Discord webhook link

local language = "ruRU" -- Установите язык на "ruRU" или "enUS" | Set the language to "ruRU" or "enUS"

local porterAvatarURL = "Заменить - Replace" -- Ссылка на изображение для вашего бота | Link to the image for your bot

local classNames = {
    ruRU = {
        [1] = "Воин",
        [2] = "Паладин",
        [3] = "Охотник",
        [4] = "Разбойник",
        [5] = "Жрец",
        [6] = "Рыцарь смерти",
        [7] = "Шаман",
        [8] = "Маг",
        [9] = "Чернокнижник",
        [11] = "Друид"
    },
    enUS = {
        [1] = "Warrior",
        [2] = "Paladin",
        [3] = "Hunter",
        [4] = "Rogue",
        [5] = "Priest",
        [6] = "Death Knight",
        [7] = "Shaman",
        [8] = "Mage",
        [9] = "Warlock",
        [11] = "Druid"
    }
}

local messages = {
    ruRU = '{"content": null, "embeds": [{"title": "Игрок вошёл в мир", "description": "Имя: %s\\nКласс: %s\\nУровень: %d", "color": 3066993, "thumbnail": {"url": "%s"}}], "username": "Портье", "avatar_url": "%s", "attachments": []}',
    enUS = '{"content": null, "embeds": [{"title": "Player Joined the World", "description": "Name: %s\\nClass: %s\\nLevel: %d", "color": 3066993, "thumbnail": {"url": "%s"}}], "username": "Porter", "avatar_url": "%s", "attachments": []}'
}

local function SendDiscordEmbed(message, webhookURL)
    local curlCommand = 'curl -X POST -H "Content-Type: application/json" -d @- ' .. webhookURL
    local curlProcess = io.popen(curlCommand, 'w')
    curlProcess:write(message)
    curlProcess:close()
end

local function GetPlayerIcon(player)
    local raceId = player:GetRace()
    local raceNames = {
        [1] = "human",
        [2] = "orc",
        [3] = "dwarf",
        [4] = "nightelf",
        [5] = "scourge",
        [6] = "tauren",
        [7] = "gnome",
        [8] = "troll",
        [10] = "bloodelf",
        [11] = "draenei"
    }
    local race = raceNames[raceId] or "unknown"
    local gender = player:GetGender() == 1 and "female" or "male"
    local iconURL = "https://wow.zamimg.com/images/wow/icons/large/race_" .. race .. "_" .. gender .. ".jpg"
    
    return iconURL
end

local function OnPlayerEnterWorld(event, player)
    local playerName = player:GetName()
    local classId = player:GetClass()
    local class = classNames[language][classId] or "unknown"
    local level = player:GetLevel()
    local iconURL = GetPlayerIcon(player)
    
    local message = string.format(
        messages[language],
        playerName, class, level, iconURL, porterAvatarURL
    )
    
    SendDiscordEmbed(message, playerJoinWebhookURL)
end

RegisterPlayerEvent(3, OnPlayerEnterWorld)
