from libqtile.config import Key, Group
from libqtile.command import lazy
from keys import mod, keys

# Set config for each group
groups = [
    Group("⏽"),
    Group("⏽⏽"),
    Group("⏽⏽⏽"),
]

for i, group in enumerate(groups):
    keys.extend([
        Key([mod], str(i + 1), lazy.group[group.name].toscreen()),
        Key([mod, "shift"], str(i + 1), lazy.window.togroup(group.name))
    ])
