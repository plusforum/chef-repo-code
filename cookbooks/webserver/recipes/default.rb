#
# Cookbook:: webserver
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.
#

# include_recipe 'common::ubuntu.rb'
# include_recipe 'common::centos.rb'
# include_recipe 'webserver::service.rb'

include_recipe 'webserver::service.rb'


