# Golang (Go) Cookbook

[![Cookbook Version](https://img.shields.io/cookbook/v/golang.svg?style=flat)](https://supermarket.chef.io/cookbooks/golang)
[![CI State](https://github.com/sous-chefs/golang/workflows/ci/badge.svg)](https://github.com/sous-chefs/golang/actions?query=workflow%3Aci)
[![OpenCollective](https://opencollective.com/sous-chefs/backers/badge.svg)](#backers)
[![OpenCollective](https://opencollective.com/sous-chefs/sponsors/badge.svg)](#sponsors)
[![License](https://img.shields.io/badge/License-Apache%202.0-green.svg)](https://opensource.org/licenses/Apache-2.0)

## Description

Chef cookbook for the [Go programming language](http://golang.org/).

## Requirements

### Platform

* Ubuntu >= 18.04
* Debian >= 8
* CentOS >= 7

## Usage

### golang::default

Just include `golang` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[golang]"
  ]
}
```

### golang::packages

To install Go packages using node attributes, include `golang::packages` in your node's `run_list`, and use the `['golang']['packages']` attribute:

```json
{
  "name":"my_node",
  "golang": {
    "packages": [
      "github.com/go-check/check"
    ]
  },
  "run_list": [
    "recipe[golang::packages]"
  ]
}
```

## Attributes

### golang::default

Key | Type | Description | Default
--- | ---- | ----------- | -------
`['golang']['version']` | String | Go version | `1.5`
`['golang']['platform']` | String | `amd64` or `i386` | `amd64`
`['golang']['scm']` | Boolean | install SCM dependencies `git`, `hg`, and `bzr` | `true`
`['golang']['packages']` | Array | Go packages to install when using the `golang::packages` recipe | `[]`
`['golang']['owner']` | String | The user account that owns $GOPATH | `root`
`['golang']['group']` | String | The group that owns $GOPATH | `root`
`['golang']['mode']` | String | The mode of $GOPATH | `0755`
`['golang']['from_source']` | Boolean | Install go from source | `false`
`['golang']['os']` | String | Build go for which operating system | `linux`
`['golang']['arch']` | String | Build go for which architecture | `arm`
`['golang']['arm']` | String | Build go for which arm version | `6`
`['golang']['source_method']` | String | Choose which install script should be used | `all.bash`

## Contributors

This project exists thanks to all the people who [contribute.](https://opencollective.com/sous-chefs/contributors.svg?width=890&button=false)

### Backers

Thank you to all our backers!

![https://opencollective.com/sous-chefs#backers](https://opencollective.com/sous-chefs/backers.svg?width=600&avatarHeight=40)

### Sponsors

Support this project by becoming a sponsor. Your logo will show up here with a link to your website.

![https://opencollective.com/sous-chefs/sponsor/0/website](https://opencollective.com/sous-chefs/sponsor/0/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/1/website](https://opencollective.com/sous-chefs/sponsor/1/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/2/website](https://opencollective.com/sous-chefs/sponsor/2/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/3/website](https://opencollective.com/sous-chefs/sponsor/3/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/4/website](https://opencollective.com/sous-chefs/sponsor/4/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/5/website](https://opencollective.com/sous-chefs/sponsor/5/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/6/website](https://opencollective.com/sous-chefs/sponsor/6/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/7/website](https://opencollective.com/sous-chefs/sponsor/7/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/8/website](https://opencollective.com/sous-chefs/sponsor/8/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/9/website](https://opencollective.com/sous-chefs/sponsor/9/avatar.svg?avatarHeight=100)
