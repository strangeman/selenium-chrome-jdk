cp /usr/share/zoneinfo/$TZ /etc/localtime 
echo $TZ > /etc/timezone

Xvfb :99 -screen 0 1280x1024x8 -nolisten tcp &
/tests/gradlew runIntegrationTestBrowser
