cat << EOF > /opt/apache/tomcat/apache-tomcat-8.5.56/conf/tomcat-users.xml
<?xml version='1.0' encoding='utf-8'?>
<tomcat-users>
<user username="admin" password="tomcat" roles="admin-gui,standart,manager-gui,manager-script"/>
</tomcat-users>
EOF

if [ -f "/opt/apache/tomcat/apache-tomcat-8.5.56/webapps/manager/WEB-INF/web.xml" ]
then
	sed -i "s#.*max-file-size.*#\t<max-file-size>52428800</max-file-size>#g" /opt/apache/tomcat/apache-tomcat-8.5.56/webapps/manager/WEB-INF/web.xml
	sed -i "s#.*max-request-size.*#\t<max-request-size>52428800</max-request-size>#g" /opt/apache/tomcat/apache-tomcat-8.5.56/webapps/manager/WEB-INF/web.xml
fi
