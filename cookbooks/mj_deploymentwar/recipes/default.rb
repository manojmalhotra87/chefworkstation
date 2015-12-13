#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute


## Deploy ear file

execute 'deploy war' do
	command <<-EOF
		mkdir -p /home/vagrant/apps/apache-tomcat-6.0.44/webapps
		cd /home/vagrant/apps/apache-tomcat-6.0.44/webapps
		mv jpetstore.war ../backups/jpetstore.war
		wget http://workstation:8080/jenkins/job/Jpet_Store_GIT/ws/target/jpetstore.war
		cd /home/vagrant/apps/apache-tomcat-6.0.44/bin
		./shutdown.sh
		./startup.sh
	EOF
end

