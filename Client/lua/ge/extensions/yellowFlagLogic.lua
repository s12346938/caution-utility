local M = {}
local flagState = false

local function toggleFlag()
    flagState = not flagState
    guihooks.trigger('toggleYellowFlag', flagState)
    print("FLAG STATE IS NOW: " .. tostring(flagState))
end

M.toggleFlag = toggleFlag

-- This helps the game "see" the extension immediately
local function onInit()
    log('I', 'YellowFlag', 'Extension Initialized')
end
M.onInit = onInit

return M