# 🚫 Disable Collisions – FiveM Script

A simple FiveM script that allows players to toggle vehicle collisions on or off using the `/disablecolisions` command. Useful for admins, developers, or custom game modes where invulnerability to ramming is needed.

---

## 🔧 Features

- ✅ `/colisions` toggles vehicle collisions for the player
- 🚗 Collision state persists even after switching vehicles
- 🔁 Toggle works as a switch (enabled → disabled → enabled ...)
- 💬 State notifications using [`ox_lib`](https://github.com/overextended/ox_lib)

---

## 💾 Installation

1. Download this repository and place the `disable_colisions` folder inside your server's `resources/` directory.
2. Make sure [`ox_lib`](https://github.com/overextended/ox_lib) is installed on your server.
3. Add this line to your `server.cfg`:

```cfg
ensure disable_colisions
