# Use the official .NET SDK image as the base image
FROM mcr.microsoft.com/dotnet/sdk:8.0

# Set the working directory inside the container
WORKDIR /app

# Install the SignalR Emulator as a .NET global tool
RUN dotnet tool install --global Microsoft.Azure.SignalR.Emulator

# Add the .NET tools directory to PATH
ENV PATH="${PATH}:/root/.dotnet/tools"

# Expose the default SignalR Emulator port
EXPOSE 8888

# Initialize default upstream options
RUN asrs-emulator upstream init

# Set the entry point to run the emulator
CMD ["asrs-emulator", "start", "-i", "0.0.0.0"]