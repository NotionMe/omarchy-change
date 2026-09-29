-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false

-- Add a new binding.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Change an existing binding by unbinding it first, then binding the key again.
-- This example changes SUPER+SPACE from the launcher to the Omarchy root menu.
-- hl.unbind("SUPER + SPACE")
-- o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu toggle root")

-- SUPER+W: was "Close window", now opens the browser.
hl.unbind("SUPER + W")
o.bind("SUPER + W", "Browser", { omarchy = "browser" })

-- SUPER+Q: closes the active window.
o.bind("SUPER + Q", "Close window", hl.dsp.window.close())

-- SUPER (alone): open the Omarchy menu (was SUPER+SPACE).
-- Fires on SUPER key release using the TARGET modmask + modkey trick.
hl.unbind("SUPER + SPACE")
hl.bind("SUPER + SUPER_L", hl.dsp.exec_cmd("omarchy-menu toggle"), { release = true, description = "Omarchy menu" })

-- SUPER+SPACE: toggle window floating (was on SUPER+T).
o.bind("SUPER + SPACE", "Toggle window floating", hl.dsp.window.float({ action = "toggle" }))

-- SUPER+D: fill the screen (maximized, not true fullscreen).
o.bind("SUPER + D", "Maximize window", hl.dsp.window.fullscreen({ mode = "maximized" }))

-- SUPER+E: open the file manager (Nautilus).
o.bind("SUPER + E", "File manager", "uwsm-app -- nautilus --new-window")

-- SUPER+SHIFT+S: capture a screen region (was: Google Maps).
hl.unbind("SUPER + SHIFT + S")
o.bind("SUPER + SHIFT + S", "Screenshot region", "omarchy capture screenshot region")

-- SUPER+C: open Zed editor (was: Universal copy).
hl.unbind("SUPER + C")
o.bind("SUPER + C", "Zed editor", "uwsm-app -- zeditor")

-- SUPER+A: launch default agent
o.bind("SUPER + A", "Agent", "/home/notion/.local/bin/omarchy-agent")

-- SUPER+SHIFT+CTRL+A: default agent launcher / picker with explicit path
hl.unbind("SUPER + SHIFT + CTRL + A")
o.bind("SUPER + SHIFT + CTRL + A", "Agent", "/home/notion/.local/bin/omarchy-agent --pick")


-- Disable a default binding without replacing it.
-- hl.unbind("SUPER + SHIFT + B")

-- Logitech MX Keys examples:
-- o.bind("SUPER + SHIFT + S", nil, "omarchy-capture-screenshot")
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, "omarchy-shell shell toggle omarchy.emojis")
