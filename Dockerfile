#Trying to use and dot net SDK which can run dot net applications
FROM mcr.microsoft.com/dotnet/sdk:3.1 AS build
#set the working dir to app
WORKDIR /root
#copying the project into the container
COPY . .
#building the dotnet project
WORKDIR /root/super-service/src
CMD ["dotnet","build"]
#triggering a test
WORKDIR /root/super-service/test
CMD ["dotnet", "test"]

