local TelegramBot = require("telegram-bot").Bot
local bot = TelegramBot.new("YOUR_BOT_TOKEN")

bot:on("message", function(message)
    local text = message.text
    local chat_id = message.chat.id

    bot:sendMessage(chat_id, text)
end)

print("Bot started.")
bot:start()
