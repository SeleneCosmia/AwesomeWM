---@meta _

---@alias path string

---@alias shape fun(cr: cairo_context, width: number, height: number)|false
---@alias thickness { top: number, right: number, bottom: number, left: number }|number
---@alias bounding_geometry { honor_padding: boolean, honor_workarea: boolean, margins: thickness, tag: tag, parent: drawable, bounding_rect: unknown }
---@alias geometry { x: number, y: number, width: number, height: number }
---@alias point { x: number, y: number }
---@alias size { width: number, height: number }
---@alias icon_size { [1]: integer, [2]: integer }
---@alias screen_output { mm_width: integer, mm_height: integer, name: string, viewport_id: string }
---@alias sign -1|0|1
---@alias direction "up"|"right"|"bottom"|"left"
---@alias edge "top"|"right"|"bottom"|"left"
---@alias corner "top_left"|"top_right"|"bottom_left"|"bottom_right"
---@alias orientation "vertical"|"horizontal"
---@alias halign "left"|"center"|"right"
---@alias valign "top"|"center"|"bottom"
---@alias text_ellipsize
---| "start"
---| "middle"
---|>"end"
---| "none"
---@alias text_wrap
---| "word"
---| "char"
---|>"word_char"

---@alias iscreen integer|screen

---@alias image path|cairo_surface
---@alias font string
---@alias hex_color string
---@alias color hex_color|lgi.cairo.Pattern

---@alias key string
---@alias key_modifier
---| "Any" # Any
---| "Mod4" # Super
---| "Mod1" # Alt
---| "Control" # Control
---| "Shift" # Shift
---| "Mod5" # AltGr
---| "Lock"

---@alias button
---| 0 # Any
---| 1 # Left
---| 2 # Middle
---| 3 # Right
---| 4 # Wheel Up
---| 5 # Wheel Down
---| 6 # Wheel Left
---| 7 # Wheel Right
---| 8 # Back
---| 9 # Forward

---@alias cursor
---| "arrow"
---| "based_arrow_down"
---| "based_arrow_up"
---| "boat"
---| "bogosity"
---| "bottom_left_corner"
---| "bottom_right_corner"
---| "bottom_side"
---| "bottom_tee"
---| "box_spiral"
---| "center_ptr"
---| "circle"
---| "clock"
---| "coffee_mug"
---| "cross"
---| "crosshair"
---| "cross_reverse"
---| "cursor"
---| "diamond_cross"
---| "dotbox"
---| "dot"
---| "double_arrow"
---| "draft_large"
---| "draft_small"
---| "draped_box"
---| "exchange"
---| "fleur"
---| "gobbler"
---| "gumby"
---| "hand1"
---| "hand2"
---| "heart"
---| "icon"
---| "iron_cross"
---| "leftbutton"
---| "left_ptr"
---| "left_side"
---| "left_tee"
---| "ll_angle"
---| "lr_angle"
---| "man"
---| "middlebutton"
---| "mouse"
---| "pencil"
---| "pirate"
---| "plus"
---| "question_arrow"
---| "rightbutton"
---| "right_ptr"
---| "right_side"
---| "right_tee"
---| "rtl_logo"
---| "sailboat"
---| "sb_down_arrow"
---| "sb_h_double_arrow"
---| "sb_left_arrow"
---| "sb_right_arrow"
---| "sb_up_arrow"
---| "sb_v_double_arrow"
---| "shuttle"
---| "sizing"
---| "spider"
---| "spraycan"
---| "star"
---| "target"
---| "tcross"
---| "top_left_arrow"
---| "top_left_corner"
---| "top_right_corner"
---| "top_side"
---| "top_tee"
---| "trek"
---| "ul_angle"
---| "umbrella"
---| "ur_angle"
---| "watch"
---| "xterm"

---@alias window_type
---| "desktop"
---| "dock"
---| "splash"
---| "dialog"
---| "menu"
---| "toolbar"
---| "utility"
---| "dropdown_menu"
---| "popup_menu"
---| "notification"
---| "combo"
---| "dnd"
---| "normal"

---@class size_hints
---@field user_position { x: integer, y: integer }
---@field program_position { x: integer, y: integer }
---@field user_size { width: integer, height: integer }
---@field program_size { width: integer, height: integer }
---@field max_width integer
---@field max_height integer
---@field min_width integer
---@field min_height integer
---@field width_inc integer
---@field height_inc integer
---@field win_gravity string
---@field min_aspect_num integer
---@field min_aspect_den integer
---@field man_aspect_num integer
---@field man_aspect_den integer
---@field base_width integer
---@field base_height integer

---@class motif_wm_hints
---@field functions { all: boolean, resize: boolean, minimize: boolean, maximize: boolean, close: boolean }
---@field decorations { all: boolean, border: boolean, resizeh: boolean, title: boolean, menu: boolean, maximize: boolean, minimize: boolean }
---@field input_mode "modeless"|"primary_application_modal"|"system_modal"|"full_application_modal"|"unknown"
---@field status { tearoff_window: boolean }
