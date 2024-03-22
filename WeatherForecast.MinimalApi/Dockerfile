FROM mcr.microsoft.com/dotnet/aspnet:8.0
COPY ["WeatherForecast-MinimalAPI/bin/Release/", "app/"]
WORKDIR /app
ENTRYPOINT ["dotnet", "WeatherForecast.MinimalApi.dll"]