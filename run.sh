cp /usr/share/zoneinfo/$TZ /etc/localtime 
echo $TZ > /etc/timezone

mkdir /tmp/.X11-unix
chmod 1777 /tmp/.X11-unix
chown root /tmp/.X11-unix/

Xvfb :99 -screen 0 1280x1024x8 -nolisten tcp &
/tests/gradlew runIntegrationTestBrowser
