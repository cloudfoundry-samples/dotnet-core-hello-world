
#FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build-env
FROM registry.redhat.io/dotnet/dotnet-31-jenkins-agent-rhel7:3.1-36
#FROM mcr.microsoft.com/dotnet/core/sdk:2.2 AS build-env


# FROM quay.io/sreejithvh6/dotnetimage:latest
WORKDIR /app

# copy csproj and restore as distinct layers
COPY *.csproj ./


#RUN dotnet restore
COPY . ./
USER root
RUN scl enable rh-dotnet31 'dotnet help'
#RUN chmod -R 755 /app
RUN scl enable rh-dotnet31 'dotnet restore'
RUN scl enable rh-dotnet31 'dotnet publish'
#RUN dotnet publish -c Release -o out

ENTRYPOINT ["dotnet", "aspnetapp.dll"]
