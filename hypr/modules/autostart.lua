-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
hl.on("hyprland.start", function()
  hl.exec_cmd("kitty")
  --   hl.exec_cmd("nm-applet")
  hl.exec_cmd("waybar & hyprpaper")
  hl.exec_cmd("swaync")
  hl.exec_cmd("wl-paste --type text --watch cliphist store")
  hl.exec_cmd("wl-paste --type image --watch cliphist store")
  hl.exec_cmd("hyprsunset --temperature 4000")
  hl.exec_cmd("systemctl --user start hyprpolkitagent")
  hl.exec_cmd('prtonvpn connect --country "Switzerland"')
end)
