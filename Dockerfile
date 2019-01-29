from microsoft/dotnet:latest

copy . app
workdir /app/Coreproject

run dotnet restore
run dotnet build


ENV ASPNETCORE_URLS http://*:5000
#ENV ASPNETCORE_ENVIRONMENT docker

ENTRYPOINT ASPNETCORE_URLS http://*:5000 dotnet run
EXPOSE 5000
