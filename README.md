# Knight's Trial: Trap & Bounce Platformer

A 2D action-platformer built in **Godot 4**, featuring a knight navigating a world filled with mechanical hazards, dynamic environments, and dangerous creatures.

## 🚀 Key Features

### 1. State-Driven & Hidden Traps
* **Instant Activation**: Hazards activate the moment the player touches a trigger area, appearing and becoming deadly immediately.
* **Hidden Mechanics**: Some traps remain completely invisible until triggered, requiring quick reflexes to survive.
* **Custom Killzones**: Specialized `Area2D` detection that reloads the scene upon contact with the player.

### 2. Interactive Environments
* **Mushroom Bounce Pads**: Built using `StaticBody2D` with `Area2D` detectors to trigger vertical velocity and "jump" animations.
* **Moving Platforms**: Dynamic platforms that navigate set paths to assist or hinder player movement.

### 3. Enemies & Hazards
* **Slime Enemy**: A classic patrol-based enemy that challenges the player's timing and movement.
* **Saw Blades**: Mechanical hazards that can be configured to drop from the ceiling or spin in place as permanent obstacles.

### 4. Physics & Collision
* **Layer-Based Interaction**: Uses Godot’s collision layers and masks (specifically Layer 3 for the player) to distinguish between hazards and the Knight.
* **Signal Management**: Robust event-handling using signals to manage state changes and scene reloads.

---

## 🛠️ Technical Overview

### Scene Structure
The project uses a modular scene tree to manage trap and platform behavior:
* **spiketrap** (Node2D): Manages activation states (IDLE, FALLING, STUCK).
* **Area2D** (Saw Body): Handles the visual appearance and physics position.
* **killZone** (Area2D): A dedicated child node for death detection.

---

## 🎮 How to Play
1. **Explore**: Navigate the level while looking for visual cues of hidden traps.
2. **Combat**: Avoid Slimes or time your jumps to move past them.
3. **Platforming**: Use moving platforms and mushroom pads to reach the goal.
