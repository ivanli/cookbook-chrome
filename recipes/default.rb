#
# Cookbook Name:: chrome
# Recipe:: default
#
# Copyright 2015, Ivan Li
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'chocolatey'

raise "Architecture '#{node['chrome']['arch']}' is invalid." unless [:x86, :x64].include? node['chrome']['arch']

package = 'google-chrome-x64'
package = 'googlechrome' if node['chrome']['arch'] == :x86

if node['chrome']['package_version'] == :latest
  chocolatey package
else
  chocolatey package do
    version node['chrome']['package_version']
  end
end
