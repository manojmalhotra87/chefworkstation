#
# Author:: cookbooks@chef.io
# CreatedBy:: Stathy Touloumis <stathy@chef.io>
#
# Cookbook Name:: rolling_deploy
# Resource:: artifact
#
# Copyright:: 2014, Stathy, Inc
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
#
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

actions :deploy, :complete
default_action :deploy

attribute :name,          :kind_of => String, :name_attribute => true
attribute :app_name,      :kind_of => String, :required => true

# holding area for newly created artifact
attribute :artifact_path, :kind_of => String, :required => true
attribute :checksum,      :kind_of => String, :required => true
attribute :desired,       :kind_of => String, :required => true

# holding area where optional artifact cookbook is created, name and version
attribute :cookbook_name, :kind_of => String
attribute :cookbook_version, :kind_of => String

#If not knife_rp_path is passed, will default authz to client
attribute :knife_rb_path, :kind_of => String, :default => nil

def initialize(*args)
  super
  @desired = @checksum if @desired.nil?
end
