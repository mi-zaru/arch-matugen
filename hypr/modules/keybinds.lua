---------------------
---- MY PROGRAMS ----
---------------------

-- Set programs that you use
local terminal    = "kitty"
local fileManager = "nautilus"
local menu        = "~/.config/rofi/launcher.sh"



local mainMod = "ALT" -- Sets "Windows" key as main modifier
local closeWindowBind = hl.bind(mainMod .. " + Q", hl.dsp.window.close())

-- Program 
hl.bind(mainMod .. " + return", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + SHIFT + Z", hl.dsp.exec_cmd("zen-browser"))
hl.bind(mainMod .. " + SHIFT + D", hl.dsp.exec_cmd("vesktop"))
hl.bind(mainMod .. " + SHIFT + M", hl.dsp.exec_cmd("spotify"))
hl.bind(mainMod .. " + SHIFT + E", hl.dsp.exec_cmd("dolphin"))

-- Windows
hl.bind(mainMod .. " + F", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + V", hl.dsp.layout("togglesplit"))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd("~/.config/waybar/launch.sh"))
hl.bind(mainMod .. " + SHIFT + R", hl.dsp.exec_cmd("~/.config/quickshell/reload.sh"))

-- Lockscreen
hl.bind(mainMod .. " + DELETE" , hl.dsp.exec_cmd("wlogout"))
hl.bind(mainMod .. " + X", hl.dsp.exec_cmd("hyprlock"))

-- Swaync
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd("swaync-client -t"))

-- Rofi
hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("~/.local/bin/walset"))
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd("~/.local/bin/walset-random"))

-- screenshot 
hl.bind("PRINT", hl.dsp.exec_cmd("hyprshot -m output"))
hl.bind(mainMod .. " + PRINT", hl.dsp.exec_cmd("hyprshot -m window"))
hl.bind("SHIFT + PRINT", hl.dsp.exec_cmd("hyprshot -m region -z"))

-- Move focus with mainMod + hjkl
hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))

-- Move windows with mainMod + hjkl
hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.move({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("F9",         hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("F8",         hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("F10",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("F10",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),        { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),        { locked = true, repeating = true })

-- Requires playerctl
hl.bind("F7",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("F5", hl.dsp.exec_cmd("playerctl play-pause"),  { locked = true })
hl.bind("f6",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })


