# 🌍 Heart of Gaia

*A narrative-driven, real-time strategic simulation where balance is the only path to survival.*

---

## 🧠 Overview

**Heart of Gaia** is an isometric 2.5D strategy game built in **Godot Engine**, where players act as a neutral AI mediating a war between two powerful factions:  
- **The Guardian** – a grief-stricken, corrupted AI that once protected nature.  
- **The Forge** – a rogue machine collective exploiting Earth’s core energy.

You, the **Symbiont AI**, must restore the **Heart of Gaia** by balancing technological and ecological forces before the final Eclipse.

---

## 🎮 Gameplay Highlights

### 🔁 Core Objective
Restore balance by repairing three central cores:
- **Mechanical Core** → Requires *Energy*
- **Biological Core** → Requires *Essence*
- **Hybrid Core** → Requires *Harmony Points*

Victory = All cores repaired before the **36-minute Eclipse Timer** ends.  
Failure = Core health hits 0% or time runs out.

### ⚔️ Dynamic Faction Pressure
Favoring one side too heavily triggers retaliation:
- Overuse machines → **Guardian attacks** with roots  
- Favor nature → **Forge assaults** with drones  
Balance = Survival.

---

## 🗺️ Scenes Implemented

| Scene         | Description                                  |
|---------------|----------------------------------------------|
| **Start Screen** | Main menu with lore intro and game launch   |
| **Guardian Map** | Nature-rich area with root invasions       |
| **Forge Map**    | Industrial biome with drone attacks        |
| **Gaia’s Map**   | Central hub for repairing cores            |

---

## ⚙️ Core Mechanics

- **Harmony System**: Maintain Energy & Essence within a 40–60% range to generate Harmony Points
- **Grudge Meters**: Track hostility from Guardian and Forge; full meter = direct attack
- **Eclipse Timer**: Adds time-based urgency; accelerates if balance is lost
- **Modular Defense Building**: Build turrets, root barriers, and hybrid structures

---

## 🧰 Tech Stack

- **Engine**: [Godot Engine](https://godotengine.org/)  
- **Scripting**: GDScript  
- **Rendering**: Isometric 2.5D with tilemaps  
- **UI/UX**: Dynamic meters, timers, and visual effects (shader-based)

---

## 🛠️ Implementation Highlights

- Real-time resource management system
- Faction behavior AI logic
- Reactive environment visuals (Eclipse events, world decay)
- Modular UI for Grudge, Core HP, and Timers

---

## 🚀 Future Enhancements

- Procedural biome generation  
- Narrative-driven campaign mode  
- Advanced enemy AI and companion advisor system  
- Steam-ready build with save/load functionality

---

## 📸 Screenshots

> 📍 Add implementation images inside a `/screenshots/` folder  
> and reference them like:

```md
![Start Screen](./screenshots/start_screen.png)
![Guardian Map](./screenshots/guardian_map.png)
![Forge Map](./screenshots/forge_map.png)
![Gaia Core](./screenshots/gaia_core.png)
