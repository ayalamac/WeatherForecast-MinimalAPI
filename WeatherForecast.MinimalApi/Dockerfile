FROM mcr.microsoft.com/dotnet/aspnet:8.0
COPY ["WeatherForecast.MinimalApi/bin/Release/net8.0/linux-musl-x64/publish", "app/"]
WORKDIR /app
ENTRYPOINT ["dotnet", "WeatherForecast.MinimalApi.dll"]