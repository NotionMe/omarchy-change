-- Extra autostart processes.
-- o.launch_on_start("my-service")

-- Focus workspace 1 (DP-1) on startup so cursor and apps launch there.
o.exec_on_start("hyprctl dispatch workspace 1")
