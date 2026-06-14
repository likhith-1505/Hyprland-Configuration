---------------
---- INPUT ----
---------------

hl.config({
    input = {
        kb_layout    = "us",
        kb_variant   = "",
        kb_model     = "",
        kb_options   = "",
        kb_rules     = "",

        follow_mouse = 1,

        sensitivity  = 0, -- -1.0 - 1.0, 0 means no modification.

        touchpad     = {
            natural_scroll = false,
        },
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

hl.gesture({ fingers = 3, direction = "up", mods = "SUPER", scale = 1.5, action = "fullscreen" })
hl.gesture({ fingers = 3, direction = "down", mods = "ALT", action = "close" })
-- hl.gesture({ fingers = 2, direction = "pnchin", action = "cursorZoom", zoom_level = 2 })
hl.gesture({ fingers = 2, direction = "pinchout", action = "cursorZoom", zoom_level = 1 })
hl.gesture({ fingers = 2, direction = "pinchin", action = "cursorZoom", zoom_level = 2.0, mode = "mult" })
-- Example per-device config
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Devices/ for more
hl.device({
    name        = "epic-mouse-v1",
    sensitivity = -0.5,
})
