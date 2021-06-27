import os
import subprocess

from typing import List  # noqa: F401

from libqtile import bar, layout, widget, hook
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal

from keys import mod, keys
from layouts import layouts, floating_layout
from groups import groups

widget_defaults = dict(
    font="Hack Nerd Font",
    fontsize=14,
    padding=0,
)
extension_defaults = widget_defaults.copy()

screens = [
    Screen(
        top=bar.Bar(
            [
                widget.CurrentLayoutIcon(scale=0.4, background="#61afef"),
                widget.Sep(linewidth=0, padding=10),
                widget.GroupBox(
                    padding_x=8,
                    fontsize=16,
                    rounded=False,
                    active="#ffffff",
                    inactive="#abb2bf",
                    highlight_method="text",
                    this_current_screen_border="#61afef"
                ),
                widget.Spacer(),
                widget.Systray(padding=10),
                widget.Clock(
                    foreground="#ffffff",
                    format="%a %d %B, %H:%M",
                    padding=12,
                )
            ],
            35,
            background="#282c34"
        ),
    ),
]

# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(),
         start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(),
         start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front())
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: List
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True
auto_minimize = True
wmname = "LG3D"
