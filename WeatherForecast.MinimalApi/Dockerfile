FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app
COPY /app/publish .
ENTRYPOINT ["dotnet", "WeatherForecast.MinimalApi.dll"]