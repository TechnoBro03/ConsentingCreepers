<div align="center">

<img src="pack.png" width="128" alt="Consenting Creepers">

# Consenting Creepers

**A datapack where Creepers ask for consent before exploding.**

![Version](https://img.shields.io/badge/version-1.1.0-brightgreen?style=for-the-badge)
![Minecraft](https://img.shields.io/badge/minecraft-26.1%20–%2026.2-blue?style=for-the-badge)
![Certified](https://img.shields.io/badge/certified-compatibility-success?style=for-the-badge)

</div>

---

## Introduction

When a Creeper is about to explode, it doesn't! It pauses and asks for your consent:

| Answer | What happens |
| --- | --- |
| **Yes, I consent** | It explodes normally. |
| **No, thank you** | It's dismissed with a puff of hearts. |
| **No answer within 10 seconds** | It explodes normally. |
| **Closing the dialog** | It explodes normally. |

## What's different

- A waiting Creeper can still move, swim, drown, and gets pushed around. Only its fuse is on paused.
- If it loses interest, or drifts out of range before you answer, it drops the question and doesn't explode.
- One answer covers every Creeper waiting to explode near you, so a group doesn't stack up dialogs.
- Creepers ignited by flint and steel, dispensers, etc ask too, at a range you can set to prevent accidental explosions.
- Charged Creepers, custom fuses and renamed Creepers all work.

## Installation

1. Download the release `.zip`.
2. Drop it into `<world>/datapacks/`.
3. `/reload`, or load the world.

## Commands

| Command | What it does |
| --- | --- |
| `/function cc:set_ignited_range {blocks:16}` | How far an ignited Creeper looks for somebody to ask. Default `7`, minimum `7`. Survives reloads and restarts. |
| `/function cc:uninstall` | Returns every Creeper to normal and removes all traces of the pack. Run this before deleting the pack. |

> [!TIP]
> For picking a range: a Creeper's blast reaches about 6 blocks, a charged Creeper's is about 12.

---

> [!NOTE]
> Answering displays `Triggered [cc_consent] (set value to X)` in your chat. To disable this, use the following command:
> 
> ```
> /gamerule sendCommandFeedback false
> ```
> 
> This hides the feedback from every command you type, not just this one.

---

<div align="center">

[![Certified Compatibility](assets/certified.png)](https://discord.gg/SnJQcfq)

Meets the [Certified Datapack requirements](https://discord.gg/SnJQcfq)

**By TechnoBro03**

</div>
