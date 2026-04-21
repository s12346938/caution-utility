local M = {}

local flagState = false

local function toggleFlag()
    flagState = not flagState
    -- This sends the state to the UI
    guihooks.trigger('toggleYellowFlag', flagState)
end

-- Export the function so the keybind can see it
M.toggleFlag = toggleFlag

return M

local function onExtensionLoaded()
    log('I', 'YellowFlag', 'Yellow Flag extension loaded successfully!')
end

M.onExtensionLoaded = onExtensionLoaded