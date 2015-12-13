knife ssh "role:webserver AND chef_environment:production" 'chef-client' --ssh-user 'root' --ssh-password 'vagrant'
