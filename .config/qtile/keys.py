from libqtile.config import Key
from groups import groups
from libqtile.lazy import lazy

groups_keys = []

hotkeys = {
    "term": "1",
    "web": "2",
    "coding": "3",
    "kali": "4",
    "chat": "5"
}

mod = "mod4"

for group in groups:
    groups_keys.extend([
        Key([mod], hotkeys[group.name], lazy.group[group.name].toscreen()),
        Key([mod, "shift"], hotkeys[group.name], lazy.window.togroup(group.name))
    ])
