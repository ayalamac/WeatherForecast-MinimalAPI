FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY ["WeatherForecast.MinimalApi/WeatherForecast.MinimalApi.csproj", "WeatherForecast.MinimalApi/"]
RUN dotnet restore "WeatherForecast.MinimalApi/WeatherForecast.MinimalApi.csproj"
COPY . ../
WORKDIR /WeatherForecast.MinimalApi
RUN dotnet build "WeatherForecast.MinimalApi.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish --no-restore -c Release -o /app/publish

FROM mcr.microsoft.com/dotnet/aspnet:8.0
EXPOSE 8080
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "WeatherForecast.MinimalApi.dll"]