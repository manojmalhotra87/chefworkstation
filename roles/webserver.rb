name "webserver"
description "This role is there for server configuration"
default_attribute "my.attribute" => "This is MJ Attribute aaplied in rolewebserver "
run_list "recipe[mj_apache]" 
