#
# Cookbook Name:: scalr
# Recipe:: default
#
# Copyright 2013, NAtional Theatre
#
# All rights reserved - Do Not Redistribute
#
execute "get_scale" do
  command "wget http://apt.scalr.net/scalr-repository_0.3_all.deb"
  action :run
end
execute "add_scale" do
  command "dpkg -i scalr-repository_0.3_all.deb"
  action :run
end
execute "scale_update" do
  command "apt-get update"
  action :run
end

package 'scalarizr-ec2' do
  action :install
end

