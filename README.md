# Simple Minecraft Vanilla Server (Docker)

![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Java](https://img.shields.io/badge/Java_21-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)
![Ubuntu](https://img.shields.io/badge/Ubuntu_24.04-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)
![Version](https://img.shields.io/badge/Minecraft-1.21.1-46a546?style=for-the-badge&logo=minecraft&logoColor=white)

A lightweight, optimized Docker image for running a **Minecraft Java Edition** server.
Built on **Ubuntu 24.04** with **OpenJDK 21**.

👉 **[View on Docker Hub](https://hub.docker.com/r/pawelpilat/minecraft-vanilla)**

---

## ✨ Key Features

* **🚀 Latest Base:** Built on Ubuntu 24.04 LTS (Noble Numbat).
* **☕ Modern Java:** Uses OpenJDK 21 for best performance.
* **🛠 Configurable RAM:** Easily set memory limit via environment variable.
* **⚡ Automated Setup:**
    * `eula=true` (Accepted automatically).
    * `online-mode=false` (Allows non-premium connections by default).
* **🔌 Port:** Standard `25565` exposed by default.

---

## 🚀 Quick Start

To start the server immediately with default settings (**4GB RAM**):

```bash
docker run -d \
  -p 25565:25565 \
  --name mc-server \
  -v mc-data:/server \
  pawelpilat/minecraft-vanilla:latest
⚙️ Configuration
You can configure the server using environment variables.

1. Setting RAM
By default, the server uses 4GB of RAM. To change this, use the RAM variable (e.g., 2G, 8G, 12G).

Example (8GB RAM):

Bash
docker run -d -p 25565:25565 -e RAM=8G pawelpilat/minecraft-vanilla:latest
2. Data Persistence (Save your world!)
The server files are located at /server inside the container. To persist your world, logs, and config files, you must mount a volume.

Docker Volume (Recommended): -v mc-data:/server

Host Directory: -v /path/on/your/pc:/server

🛠 Building from Source
If you want to modify the Dockerfile and build the image yourself:

Clone the repository:

Bash
git clone [https://github.com/pawelpilat/minecraft-vanilla.git](https://github.com/pawelpilat/minecraft-vanilla.git)
cd minecraft-vanilla
Build the image:

Bash
docker build -t my-minecraft-server .
Run your custom image:

Bash
docker run -it -p 25565:25565 my-minecraft-server

📂 Project Structure
Dockerfile - The build instructions for the image.
eula.txt - Created automatically during build.
server.properties - Created automatically with online-mode=false.
