# Bash Battle Arena

## Overview

The "Bash Battle Arena" is a command-line game designed to teach and improve Bash scripting skills in a fun and interactive way. The game presents players with a series of increasingly complex challenges that they must solve by writing Bash scripts. Each challenge is structured like a level in a game, and as players progress, they learn new Bash concepts and best practices.

Objective: Players must complete various tasks or "missions" using Bash scripts. These tasks range from simple file manipulations to more complex system operations. The goal is to "defeat" each level by correctly solving the problem, with the ultimate aim of becoming a "Bash Master."

## Game Structure

The games are level-based. You begin at level 1, and the difficulty increases as you go up the levels.

There is a Boss Battle every 5 levels designed to combine and reinforce the knowledge from the previous 5 levels.

## Progress

### Level 1: The Basics

Mission: Create a directory named Arena and then inside it, create three files: warrior.txt, mage.txt, and archer.txt. List the contents of the Arena directory.

#### Solution

```bash
mkdir Arena                                   # Create a directory named Arena
cd Arena                                      # Navigate into the Arena directory
touch warrior.txt mage.txt archer.txt         # Create all three files
ls                                            # List the contents of the directory
```

---

### Level 2: Variables and Loops

Mission: Create a script that outputs the numbers 1 to 10, one number per line.

