knife ssh "role:webserver AND chef_environment:development" 'chef-client' --ssh-user 'root' --ssh-password 'vagrant'
