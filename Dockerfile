from microsoft/dotnet:latest

copy . app
workdir /app/Coreproject

run dotnet restore
run dotnet build


ENV ASPNETCORE_URLS http://*:36218
ENV ASPNETCORE_ENVIRONMENT docker

EXPOSE 36218

ENTRYPOINT dotnet run

