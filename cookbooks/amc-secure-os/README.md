# Example

AMC SecureOS wrapper cookbook

## Requirements

### Platform

- Windows
- Linux

### Cookbooks

- amc-windows-server-2016

## Attributes

- `node['amc']['secureos']['platform']` - Defaults to `Windows`.
- `node['amc']['secureos']['platform']['version']` - Defaults to `Server2016`.

## Recipes

- amcsecureos::default

## License and Maintainer

Maintainer:: (<ablogumas@amctheatres.com>)

License:: All rights reserved
