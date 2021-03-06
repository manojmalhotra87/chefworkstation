#
# Cookbook Name:: mj_apache
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute



package_name = "httpd"


if node["platform"] == "ubuntu"
	package_name = "apache2"
end

package package_name do
	action :install
end

service package_name do
	action [:enable, :start]
end

template '/var/www/html/index.html' do
	source 'index.html.erb'
	mode "0644"
end

#file '/var/www/html/index.html' do
#	action :delete
#end

