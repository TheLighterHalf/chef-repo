#
# Cookbook Name:: amc-windows-server-2016
# Recipe:: rdp
#
# Copyright (c) 2016 Joe Gardiner, All Rights Reserved.

return unless node['platform_family'] == 'windows'

if node['windows_hardening']['rdp']['harden'] == true
  # Strong Encryption for Windows Remote Desktop Required
  # windows-baseline: windows-rdp-101
  registry_key 'HKLM\\Software\\Policies\\Microsoft\\Windows NT\\Terminal Services' do
    values [{
      name: 'MinEncryptionLevel',
      type: :dword,
      data: 3
    }]
    recursive true
    action :create
  end
end