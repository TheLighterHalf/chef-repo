# frozen_string_literal: true
# This is a Chef attributes file. It can be used to specify default and override
# attributes to be applied to nodes that run this cookbook.

# set this value if you want to harden terminal services
default['windows_hardening']['rdp']['harden'] = true
