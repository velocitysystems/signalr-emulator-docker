# signalr-emulator-docker

This repository contains a Dockerfile for setting up an [Azure SignalR Local Emulator](https://learn.microsoft.com/en-us/azure/azure-signalr/signalr-howto-emulator) in a containerized environment. The Dockerfile is designed to simplify the process of running the emulator locally for development and testing purposes.

### Features
- Runs the Azure SignalR Local Emulator in a Docker container.
- Provides a consistent environment for local development.
- Easy to set up and use with minimal configuration.

### Usage

1. **Build the Docker Image**:
    ```bash
    docker build -t signalr-emulator .
    ```

2. **Run the Container**:
    ```bash
    docker run -d -p 8080:8080 signalr-emulator
    ```

3. **Access the Emulator**:
    The emulator will be available at `http://localhost:8080`.

### Prerequisites
- Docker must be installed on your system.
- Ensure that the Azure SignalR Local Emulator is compatible with your development environment.

### Customization
You can modify the Dockerfile to suit your specific requirements, such as changing the exposed ports or adding additional dependencies.

### Legal
SignalR™ is a registered trademark of Microsoft Corporation. This project is not affiliated with or endorsed by Microsoft Corporation.
