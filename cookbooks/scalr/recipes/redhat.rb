#
# Cookbook Name:: scalr
# Recipe:: default
#
# Copyright 2013, NAtional Theatre
#
# All rights reserved - Do Not Redistribute
#

include_recipe "yum::epel"

package 'python26' do
  action :install
end

execute "add_scale" do
  command "rpm -Uvh http://rpm.scalr.net/rpm/scalr-release-2-1.noarch.rpm"
  creates "/etc/yum.repos.d/scalr.repo"
  action :run
end

package 'scalarizr-ec2' do
  action :install
end
