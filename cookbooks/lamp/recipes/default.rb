#
# Cookbook:: lamp
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.
#


execute "update" do
  command "apt-get update && apt-get upgrade -y"
  action [ :run ]
end


include_recipe 'lamp::apache'
include_recipe 'lamp::mysql'
include_recipe 'lamp::php'
include_recipe 'lamp::user'


