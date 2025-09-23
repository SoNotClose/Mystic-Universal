print("mystic by sonotclose")

-- universal as in most of the options work unversally 
-- im not adding aimbot and shit for what

local unsupportedIds = {
    17625359962, -- Rivals (they have a anticheat)
    16732694052, -- Fisch this script rlly has nothing for it
    8737602449, -- PD this script rlly has nothing for it
    2753915549, -- BF this script rlly has nothing for it
    10449761463, -- TSB this script rlly has nothing for it
    126884695634066, -- GAG this script rlly has nothing for it
    109983668079237, -- SAB this script rlly has nothing for it
    79546208627805 -- 99 this script rlly has nothing for it
}

local currentId = game.PlaceId

local function isUnsupported(id)
    for _, v in ipairs(unsupportedIds) do
        if v == id then
            return true
        end
    end
    return false
end

if isUnsupported(currentId) then
    game.Players.LocalPlayer:Kick("Mystic doesn't work for this game.")
else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SoNotClose/Mystic-Universal/main/Mystic/Source/main.lua"))()
end
