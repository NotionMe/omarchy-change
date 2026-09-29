-- Change the default Omarchy look'n'feel.

-- https://wiki.hypr.land/Configuring/Basics/Variables/#general
-- hl.config({
--   general = {
--     -- No gaps between windows or borders.
--     gaps_in = 0,
--     gaps_out = 0,
--     border_size = 0,
--
--     -- Change to niri-like side-scrolling layout.
--     layout = "scrolling",
--   },
-- })

-- https://wiki.hypr.land/Configuring/Basics/Variables/#decoration
-- hl.config({
--   decoration = {
--     -- Use round window corners.
--     rounding = 8,
--
--     -- Dim unfocused windows (0.0 = no dim, 1.0 = fully dimmed).
--     dim_inactive = true,
--     dim_strength = 0.15,
--   },
-- })

-- https://wiki.hypr.land/Configuring/Basics/Variables/#animations
-- Enable window animations with smooth easing.
hl.curve("omarchySmooth", { type = "bezier", points = { { 0.15, 0.3 }, { 0.6, 1.05 } } })
hl.curve("omarchyBoost", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1 } } })

hl.animation({ leaf = "windows", enabled = true, speed = 4, bezier = "omarchySmooth", style = "popin 80%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 2, bezier = "omarchySmooth", style = "popin 80%" })
hl.animation({ leaf = "border", enabled = true, speed = 6, bezier = "omarchySmooth" })
hl.animation({ leaf = "fade", enabled = true, speed = 4, bezier = "omarchySmooth" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 4, bezier = "omarchySmooth" })

-- Fast, smooth slidefade when switching workspaces.
hl.animation({ leaf = "workspaces", enabled = true, speed = 7, bezier = "omarchyBoost", style = "slidefade 30%" })

-- https://wiki.hypr.land/Configuring/Basics/Variables/#layout
-- hl.config({
--   layout = {
--     -- Avoid overly wide single-window layouts on wide screens.
--     single_window_aspect_ratio = { 1, 1 },
--   },
-- })

-- https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/
-- hl.config({
--   scrolling = {
--     -- See only one column per screen instead of two.
--     column_width = 0.97,
--   },
-- })
