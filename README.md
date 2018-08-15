# AMC Chef Repo

Every Chef installation needs a Chef Repository. This is the place where cookbooks, roles, config files and other artifacts for managing systems with Chef will live. We strongly recommend storing this repository in a version control system such as Git and treat it like source code.

While we prefer Git, and make this repository available via GitHub, you are welcome to download a tar or zip archive and use your favorite version control system to manage the code.

## Naming Standards

Conforming to naming standards makes it easy to understand what you're looking at without digging right in. Please follow the following naming standards to ensure ease of use and portability.

* Application Cookbooks - defines the entire application
  * amc-app-api-platform
  * amc-app-graphql
  * amc-app-redis

* Wrapper Cookbooks - wraps up a bunch of roles for ease of use
  * amc-secure-os

* Role Cookbooks - can be plugged in to anything
  * amc-role-windows-server-2016
  * amc-role-windows-server-2008-r2
  * amc-role-centos-7
  * amc-role-iis
  * amc-role-zabbix-agent
  * amc-role-splunk-forwarder
  * amc-role-new-relic-agent

* Recipes - Combine these to make a cookbook
  * amc-rec-redis-install
  * amc-rec-redis-configure
  * amc-rec-iis-install
  * amc-rec-iis-configure

## Repository Directories

This repository contains several directories, and each directory contains a README file that describes what it is for in greater detail, and how to use it for managing your systems with Chef.

- `cookbooks/` - Cookbooks you download or create.
- `data_bags/` - Store data bags and items in .json in the repository.
- `roles/` - Store roles in .rb or .json in the repository.
- `environments/` - Store environments in .rb or .json in the repository.

## Configuration

The config file, `.chef/knife.rb` is a repository specific configuration file for knife. If you're using the Chef Platform, you can download one for your organization from the management console. If you're using the Open Source Chef Server, you can generate a new one with `knife configure`. For more information about configuring Knife, see the Knife documentation.

<https://docs.chef.io/knife.html>

### Pre-Reqs

- vagrant plugin install vagrant-omnibus
