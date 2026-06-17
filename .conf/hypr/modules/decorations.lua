-----------------------
---- LOOK AND FEEL ----
-----------------------

-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
	general = {
		gaps_in = 10,
		gaps_out = 20,

		border_size = 4,

		col = {
			active_border = { colors = { "rgba(33ccffee)", "rgba(BC13FEFF)" }, angle = 45 },
			inactive_border = "rgba(FFFFFF10)",
		},

		-- Set to true to enable resizing windows by clicking and dragging on borders and gaps
		resize_on_border = false,

		-- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
		allow_tearing = false,

		layout = "dwindle",
	},

	decoration = {
		rounding = 18,
		rounding_power = 5,

		-- Change transparency of focused and unfocused windows
		active_opacity = 1,
		inactive_opacity = 0.9,

		shadow = {
			enabled = true,
			range = 30,
			render_power = 4,
			color = 0x44111111,
		},

		blur = {
			enabled = true,
			size = 8,
			passes = 3,
			vibrancy = 0.1696,
		},
	},

	animations = {
		enabled = true,
	},
})

-- Default curves and animations, see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/
hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } })
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1 } } })
hl.curve("quick", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } })
hl.curve("premium", {
	type = "spring",
	mass = 1,
	stiffness = 120,
	dampening = 18,
})
-- Default springs
hl.curve("easy", { type = "spring", mass = 1, stiffness = 71.2633, dampening = 15.8273644 })

hl.animation({ leaf = "global", enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "border", enabled = true, speed = 10, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows", enabled = true, speed = 8, spring = "easy" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 8, spring = "premium", style = "slide bottom" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 8, bezier = "easeOutQuint", style = "slide" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade", enabled = true, speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers", enabled = true, speed = 6, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 6, bezier = "easeOutQuint", style = "slide top" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 5, bezier = "easeOutQuint", style = "slide top" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 4, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 3, bezier = "almostLinear", style = "slide" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 3, bezier = "almostLinear", style = "slide" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 3, bezier = "almostLinear", style = "slide" })
hl.animation({ leaf = "zoomFactor", enabled = true, speed = 7, bezier = "easeOutQuint" })

hl.layer_rule({
	match = {
		namespace = "swaync-control-center",
	},

	animation = "slide top",
})

hl.window_rule({
	match = {
		class = "firefox",
	},
	animation = "slide",
	workspace = 4,
})

hl.layer_rule({
	match = {
		namespace = "rofi",
	},

	animation = "slide bottom",
})

hl.window_rule({
	match = {
		class = "org.pulseaudio.pavucontrol",
	},
	float = true,
	center = true,
	animation = "fade",
})
hl.window_rule({
	match = {
		modal = true,
	},

	dim_around = true,
	float = true,
})

hl.window_rule({
	match = {
		class = "app.zen_browser.zen",
	},
	float = false,
	workspace = 5,
})
hl.window_rule({
	match = {
		class = "librewolf",
	},
	workspace = 2,
	float = false,
})
hl.window_rule({
	match = {
		class = "virt-manager",
	},
	float = true,
	workspace = 10,
})

hl.window_rule({
	match = {
		class = "kitty",
	},
	tile = true,
})

hl.window_rule({
	match = {
		title = "Kali on QEMU/KVM",
	},
	workspace = 9,
})

hl.window_rule({
	match = {
		title = "fedora on QEMU/KVM",
	},
	workspace = 7,
})

-- Ref https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/
-- "Smart gaps" / "No gaps when only"
-- uncomment all if you wish to use that.
-- hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
-- hl.workspace_rule({ workspace = "f[1]",   gaps_out = 0, gaps_in = 0 })
-- hl.window_rule({
--     name  = "no-gaps-wtv1",
--     match = { float = false, workspace = "w[tv1]" },
--     border_size = 0,
--     rounding    = 0,
-- })
-- hl.window_rule({
--     name  = "no-gaps-f1",
--     match = { float = false, workspace = "f[1]" },
--     border_size = 0,
--     rounding    = 0,
-- })
