-- // Made By: Sectly_playz#1404

--[[ -- // How To:
local Prompter = loadstring(game:HttpGet("",true))()

Prompter:Prompt("nvU7yAyZfQ")
--]]

local PromtDiscordInvite = {}

function PromtDiscordInvite:Prompt(invCode)
    local httpService = game:GetService("HttpService")
    local httpRequest = (syn and syn.request) or (httpService and httpService.request) or (http_request)

    if not httpRequest then print("Exploit not supported. No HTTP found.") return end
    
    httpRequest({
        Url = "http://127.0.0.1:6463/rpc?v=1",
        Method = "POST",

        Headers = {
            ['Content-Type'] = 'application/json',
            Origin = 'https://discord.com'
        },

        Body = httpService:JSONEncode({
            cmd = 'INVITE_BROWSER',
            nonce = httpService:GenerateGUID(false),
            args = {code = invCode}
        })
        
    })
end

return PromtDiscordInvite
