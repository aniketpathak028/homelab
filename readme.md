# Sysadmin Playground

- simple docker container to emulate a linux playground, to practice sysadmin tasks!
- ps: would be adding more stuff like startup scripts, cron jobs, network calls for port admin.

## Quick Start

1.  **Clone Repository:**
    ```bash
    git clone https://github.com/aniketpathak028/sysadmin-playground
    cd sysadmin-playground
    ```

2.  **Build Docker Image:**
    ```bash
    docker build -t sysadmin-playground .
    ```

3.  **Run Docker Container:**
    ```bash
    docker run -it --name playground sysadmin-playground
    ```