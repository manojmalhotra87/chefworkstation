#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

## Install java

package 'java-1.7.0-openjdk' do
	action :install
end


## Install tomcat

execute 'Tomcat Install' do
	command <<-EOF
		mkdir -p /home/vagrant/apps
		cd /home/vagrant/apps;
		wget http://www.us.apache.org/dist/tomcat/tomcat-6/v6.0.44/bin/apache-tomcat-6.0.44.tar.gz;
		tar -xzvf apache-tomcat-6.0.44.tar.gz;
		rm -rf *.gz
		source ~/.bashrc
		cd /home/vagrant/apps/apache-tomcat-6.0.44/bin
		./shutdown.sh
		./startup.sh
	EOF
end


