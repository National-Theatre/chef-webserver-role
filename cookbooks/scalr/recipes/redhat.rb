#
# Cookbook Name:: scalr
# Recipe:: default
#
# Copyright 2013, National Theatre
#
# All rights reserved - Do Not Redistribute
#

if node["platform_version"] =~ /5./ 
  include_recipe "yum::epel"
  package 'python26' do
    action :install
  end
end

execute "add_scale" do
  command "rpm -Uvh http://rpm.scalr.net/rpm/scalr-release-2-1.noarch.rpm"
  creates "/etc/yum.repos.d/scalr-stable.repo"
  action :run
end

package 'scalarizr-ec2' do
  action :install
end
