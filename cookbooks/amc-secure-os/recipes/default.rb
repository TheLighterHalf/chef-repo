# rubocop:disable EndOfLine
# frozen_string_literal: true
# This is a Chef recipe file. It can be used to specify resources which will
# apply configuration to a server.

log "Welcome to AMC SecureOS, #{node['amc']['secureos']['platform']}!" do
  level :info
end

# For more information, see the documentation: https://docs.chef.io/recipes.html
