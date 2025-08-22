


### root@seda08:/opt/tomcat2/bin# cat /etc/systemd/system/tomcat2.service
[Unit]
Description=Apache Tomcat Web Application Container
After=network.target

[Service]
Type=forking

User=root
Group=root

Environment="JAVA_HOME=/opt/zulu7.56.0.11-ca-jdk7.0.352-linux_x64"
Environment="CATALINA_PID=/opt/tomcat2/temp/tomcat.pid"
Environment="CATALINA_HOME=/opt/tomcat2"
Environment="CATALINA_BASE=/opt/tomcat2"
Environment="CATALINA_OPTS=-Xms512M -Xmx1024M -server -XX:+UseParallelGC"
Environment="JAVA_OPTS=-Djava.awt.headless=true -Djava.security.egd=file:/dev/./urandom"

ExecStart=/opt/tomcat2/bin/startup.sh
ExecStop=/opt/tomcat2/bin/shutdown.sh

Restart=on-failure

[Install]
WantedBy=multi-user.target