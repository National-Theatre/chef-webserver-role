#
# Cookbook Name:: scalr
# Recipe:: default
#
# Copyright 2013, National Theatre
#
# All rights reserved - Do Not Redistribute
#

case node["platform_family"]
when "rhel"
  include_recipe "scalr::redhat"
when "debian"
  include_recipe "scalr::debian"
end