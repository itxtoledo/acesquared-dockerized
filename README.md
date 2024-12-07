# AceSquared-Dockerized

Ace Squared is a thrilling multiplayer arena first-person shooter where creativity knows no bounds! Build massive structures, dig strategic tunnels, and outsmart your opponents. With **32-player servers**, multiple **character classes**, and diverse **game modes**, Ace Squared delivers endless action and innovation.

### 🎮 Get the Game

Purchase Ace Squared on [Steam](https://store.steampowered.com/app/3151710/Ace_Squared/).

---

## 🛠️ Dockerized Setup

This repository provides a **Dockerized environment** for Ace Squared, making it simple to set up and manage your game server.

### 📦 Build the Docker Image

To build the Docker image, run:

```bash
docker build -t ace . --no-cache
```

### 🚀 Run the Server

To start the Ace Squared server, use:

```bash
docker run -v ./files:/files ace
```

Here’s what the flags do:
- `-v ./files:/files`: Maps your local `./files` directory to `/files` inside the container.

---

## 📚 Additional Notes

- Ensure your system meets the [Docker requirements](https://docs.docker.com/get-docker/) before proceeding.
- The `./files` directory is used for storing server-related configurations and data. Customize it as needed.
- For detailed game setup and server management, refer to the official Ace Squared [documentation](https://store.steampowered.com/app/3151710/Ace_Squared/) or support resources.