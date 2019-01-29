from microsoft/dotnet:latest

copy . app
workdir /app/Coreproject

run dotnet restore
run dotnet build


ENV ASPNETCORE_URLS http://*:5002
ENV ASPNETCORE_ENVIRONMENT docker

EXPOSE 5002

ENTRYPOINT dotnet run

