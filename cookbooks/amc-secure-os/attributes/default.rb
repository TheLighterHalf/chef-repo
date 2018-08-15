# frozen_string_literal: true
# This is a Chef attributes file. It can be used to specify default and override
# attributes to be applied to nodes that run this cookbook.

# Set a default name
default['amc']['secureos']['platform'] = 'Windows'
default['amc']['secureos']['platform']['version'] = 'Server2016'

# For further information, see the Chef documentation (https://docs.chef.io/attributes.html).
