#
# Cookbook Name:: hello_chef_server
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.i

file "#{Chef::Config[:file_cache_path]}/hello.txt" do
  content 'Hello, Chef server!Manoj '
end

