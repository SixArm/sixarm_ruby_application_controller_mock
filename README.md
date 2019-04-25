# SixArm.com » Ruby » <br> ApplicationController mock for Rails

<!--header-open-->

[![Gem Version](https://badge.fury.io/rb/sixarm_ruby_application_controller_mock.svg)](http://badge.fury.io/rb/sixarm_ruby_application_controller_mock)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_application_controller_mock.png)](https://travis-ci.org/SixArm/sixarm_ruby_application_controller_mock)
[![Code Climate](https://api.codeclimate.com/v1/badges/d32fc8a9f742fed7e2d6/maintainability)](https://codeclimate.com/github/SixArm/sixarm_ruby_application_controller_mock/maintainability)

* Git: <https://github.com/SixArm/sixarm_ruby_application_controller_mock>
* Doc: <http://sixarm.com/sixarm_ruby_application_controller_mock/doc>
* Gem: <https://rubygems.org/gems/sixarm_ruby_application_controller_mock>
* Contact: Joel Parker Henderson, <joel@sixarm.com>
* Project: [changes](CHANGES.md), [license](LICENSE.md), [contributing](CONTRIBUTING.md).

<!--header-shut-->


## Introduction

ApplicationController mock object for testing Rails.

This provides a flash hash, params hash, and session hash.

For docs go to <http://sixarm.com/sixarm_ruby_application_controller_mock/doc>

Want to help? We're happy to get pull requests.


<!--install-open-->

## Install

### Gem

To install this gem in your shell or terminal:

    gem install sixarm_ruby_application_controller_mock

### Gemfile

To add this gem to your Gemfile:

    gem 'sixarm_ruby_application_controller_mock'

### Require

To require the gem in your code:

    require 'sixarm_ruby_application_controller_mock'

<!--install-shut-->


## Example

    require 'application_controller_mock'
    class FoosController < ApplicationController
      def whatever
         session[:hello]=world
      end
    end


## Example with intialize hash

    foo = ApplicationConroller.new(:params=>{:a=>:b,:c=>:d)})
