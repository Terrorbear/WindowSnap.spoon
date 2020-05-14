hs.window.animationDuration = 0
units = {
  right30       = { x = 0.70, y = 0.00, w = 0.30, h = 1.00 },
  right50       = { x = 0.50, y = 0.00, w = 0.50, h = 1.00 },
  right70       = { x = 0.30, y = 0.00, w = 0.70, h = 1.00 },

  left70        = { x = 0.00, y = 0.00, w = 0.70, h = 1.00 },
  left50        = { x = 0.00, y = 0.00, w = 0.50, h = 1.00 },
  left30        = { x = 0.00, y = 0.00, w = 0.30, h = 1.00 },

  top50         = { x = 0.00, y = 0.00, w = 1.00, h = 0.50 },
  bot50         = { x = 0.00, y = 0.50, w = 1.00, h = 0.50 },

  topleft       = { x = 0.00, y = 0.00, w = 0.50, h = 0.50 },
  botleft       = { x = 0.00, y = 0.50, w = 0.50, h = 0.50 },
  topright      = { x = 0.50, y = 0.00, w = 0.50, h = 0.50 },
  botright      = { x = 0.50, y = 0.50, w = 0.50, h = 0.50 },

  upright30     = { x = 0.70, y = 0.00, w = 0.30, h = 0.50 },
  botright30    = { x = 0.70, y = 0.50, w = 0.30, h = 0.50 },
  upleft70      = { x = 0.00, y = 0.00, w = 0.70, h = 0.50 },
  botleft70     = { x = 0.00, y = 0.50, w = 0.70, h = 0.50 },
  maximum       = { x = 0.00, y = 0.00, w = 1.00, h = 1.00 }
}

mash = { 'alt', 'ctrl', 'cmd' }
hardmash = { 'shift', 'ctrl' }
keybind = function (k, layout) hs.hotkey.bind(mash, k, function() hs.window.focusedWindow():move(layout, nil, true) end) end
hotkeybind = function (k, hk) hs.hotkey.bind(hardmash, k, function() hs.eventtap.event.newSystemKeyEvent(hk, true):post() end) end

keybind('right', units.right50)
keybind('left',  units.left50)
keybind('up',    units.top50)
keybind('down',  units.bot50)
keybind('m',     units.maximum)

keybind('1', units.topleft)
keybind('2', units.topright)
keybind('3', units.botleft)
keybind('4', units.botright)

hotkeybind('space', 'PLAY')
-- hotkeybind('up', 'SOUND_UP') -- doesn't work as intended
-- hotkeybind('down', 'SOUND_DOWN') -- doesn't work as intended
hotkeybind('left', 'PREVIOUS')
hotkeybind('right', 'NEXT')

-- hs.hotkey.bind(hardmash, 'up', function() hs.audiodevice.setVolume(math.min(100, 10 + hs.audiodevice.volume())) end) -- doesn't work either

--[[ 
keybind('h', units.left70)
hs.hotkey.bind(mash, ']', function() hs.window.focusedWindow():move(units.upright30,  nil, true) end)
hs.hotkey.bind(mash, '[', function() hs.window.focusedWindow():move(units.upleft70,   nil, true) end)
hs.hotkey.bind(mash, ';', function() hs.window.focusedWindow():move(units.botleft70,  nil, true) end)
hs.hotkey.bind(mash, "'", function() hs.window.focusedWindow():move(units.botright30, nil, true) end)
--]]
