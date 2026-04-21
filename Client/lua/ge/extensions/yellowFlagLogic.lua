local M = {}

local flagActive = false

local function toggleFlag()
    flagActive = not flagActive
    guihooks.trigger('toggleYellowFlag', flagActive)
    print("Yellow Flag Toggled: " .. tostring(flagActive))
end

M.toggleFlag = toggleFlag

return M