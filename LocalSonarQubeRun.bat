set SONAR_TOKEN=e62148e7f0731e8ec1d863fee86c13c74479c945
set SONAR_KEY=ado:learn
set SONAR_ORGANIZATION=(your organization key)

dotnet-sonarscanner begin ^
  /k:"%SONAR_KEY%" ^
  /d:sonar.host.url="https://sonarqube-azure-munkiisoft.azurewebsites.net" ^
  /d:sonar.login="%SONAR_TOKEN%" ^
  /d:sonar.cs.opencover.reportsPaths="./Tailspin.SpaceGame.Web.Tests/TestResults/Coverage/coverage.opencover.xml" ^
  /d:sonar.exclusions="**/wwwroot/lib/**/*" 
  
 dotnet build --no-incremental --configuration Release
 
 dotnet-sonarscanner end /d:sonar.login="%SONAR_TOKEN%"