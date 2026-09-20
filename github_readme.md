# Custom Cayo Perico Secondary Loot Script for YimMenu

A lightweight Lua script for **YimMenu** that modifies Cayo Perico heist secondary loot targets. 

This script sets **Compound Gold** as the only available secondary target while clearing all island loot (cocaine, cash, weed, paintings). It is designed to work safely without modifying or replacing your **Primary Target** (Pink Diamond, Tequila, Panther, etc.).

---

## 🛠️ Features

* **Gold-Only Compound Loot:** Automatically enables and scopes all compound gold locations.
* **Clears Unwanted Loot:** Completely removes cash, weed, cocaine, and paintings from spawning or showing on the planning board.
* **Safe for Primary Targets:** Leaves your existing primary heist target completely untouched.
* **Auto Character Detection:** Automatically detects whether you are using Character 1 (`MP0_`) or Character 2 (`MP1_`).

---

## 📋 Installation

1. Download `custom_cayo_secondary.lua` from this repository.
2. Open Windows Run (`Win + R`), paste `%AppData%\YimMenu\scripts`, and press **Enter**.
3. Place `custom_cayo_secondary.lua` into the `scripts` folder.
4. Launch GTA V and YimMenu.
5. In YimMenu, navigate to **Lua Scripts** and load `custom_cayo_secondary.lua`.

---

## ⚙️ How It Works

The script interacts with GTA V's stat system by writing bitmasks to secondary target variables:

```lua
-- Sets Compound Gold to 255 (All Compound Gold tables enabled & scoped)
stats.set_int(character_prefix .. "H4LOOT_GOLD_C", 255)
stats.set_int(character_prefix .. "H4LOOT_GOLD_C_SCOPED", 255)
```

---

## ⚠️ Requirements

* **[YimMenu](https://github.com/YimMenu/YimMenu)** (or any menu that exposes the standard GTA V `stats` Lua interface).