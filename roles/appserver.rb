{
  "name": "appserver",
  "description": "App server role",
  "json_class": "Chef::Role",
  "default_attributes": {

  },
  "override_attributes": {

  },
  "chef_type": "role",
  "run_list": [
    "recipe[mj_tomcatsetup]"
  ],
  "env_run_lists": {

  }
}
