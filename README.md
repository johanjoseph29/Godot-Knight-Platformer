# Knight's Trial: Trap & Bounce Platformer

A 2D action-platformer built in **Godot 4**, featuring a knight navigating a world filled with mechanical saw traps and organic bounce pads. This project focuses on state-based hazard logic and physics-driven environmental interaction.

## 🚀 Key Features

### 1. State-Driven Saw Traps
* **Dynamic Hazards**: Saws configured to drop and stay as permanent obstacles on the ground.
* **Instant Activation**: Hazards activate the moment the player touches a trigger area, appearing and becoming deadly immediately.
* **Custom Killzones**: Specialized `Area2D` detection that reloads the scene upon contact with the player.

### 2. Interactive Mushroom Bounce Pads
* **Solid Physics**: Built using `StaticBody2D` so the knight can stand on them like solid ground.
* **Bounce Mechanics**: Integrated `Area2D` child nodes that detect a player landing on top to trigger a "bounce" velocity and custom "jump" animations.

### 3. Physics & Collision
* **Layer-Based Interaction**: Uses Godot’s collision layers and masks (specifically Layer 3 for the player) to distinguish between hazards, triggers, and the Knight.
* **Signal Management**: Cleanup logic to disconnect unused signals and stop "Missing connected method" errors.

---

## 🛠️ Technical Overview

### Scene Structure
The project uses a modular scene tree to manage trap and platform behavior:
* **spiketrap** (Node2D): Manages the overall logic and activation states.
* **Area2D** (Saw Body): Handles the visual appearance and position.
* **triggerarea** (Area2D): Detects player proximity to activate the trap.
* **killZone** (Area2D): A dedicated child node for death detection and level resetting.

### Core Scripts
* `spiketrap.gd`: Handles the "IDLE", "FALLING", and "STUCK" states for mechanical traps.
* `mushroom.gd`: Manages solid physics interaction and triggers bounce velocity when hit from above.

---

## 🎮 How to Play
1. **Movement**: Use the controls to navigate the knight through the platformer level.
2. **Saws**: Watch your step; traps stay on the ground once triggered and will kill you if touched.
3. **Mushrooms**: Use the mushrooms as platforms; jump on them to get a vertical boost.

---

## 📂 Installation
1. Clone this repository to your local machine.
2. Open the project in **Godot 4.x**.
3. Ensure all signals for `triggerarea` and `killZone` are connected in the Node Tab.
4. Press `F5` to run the game!
