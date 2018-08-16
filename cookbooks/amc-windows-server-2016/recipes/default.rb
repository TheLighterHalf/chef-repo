# frozen_string_literal: true
# This is a Chef recipe file. It can be used to specify resources which will
# apply configuration to a server.

return unless node['platform_family'] == 'windows'

include_recipe 'amc-windows-server-2016::powershell'
include_recipe 'amc-windows-server-2016::enable_winrm_access'
include_recipe 'amc-windows-server-2016::ie'
include_recipe 'amc-windows-server-2016::privacy'
include_recipe 'amc-windows-server-2016::rdp'
include_recipe 'amc-windows-server-2016::audit'
