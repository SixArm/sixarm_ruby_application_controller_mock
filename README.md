# Ruby » <br> ApplicationController mock object for testing Rails

* Doc: <http://sixarm.com/sixarm_ruby_application_controller_mock/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_application_controller_mock>
* Repo: <http://github.com/sixarm/sixarm_ruby_application_controller_mock>
* Email: Joel Parker Henderson, <joel@sixarm.com>


## Introduction

ApplicationController mock object for testing Rails.

This provides a flash hash, params hash, and session hash.

For docs go to <http://sixarm.com/sixarm_ruby_application_controller_mock/doc>

Want to help? We're happy to get pull requests.


## Install quickstart

Install:

    gem install sixarm_ruby_application_controller_mock

Bundler:

    gem "sixarm_ruby_application_controller_mock", "~>1.2.6"

Require:

    require "sixarm_ruby_application_controller_mock"


## Install with security (optional)

To enable high security for all our gems:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem
    gem sources --add http://sixarm.com

To install with high security:

    gem install sixarm_ruby_application_controller_mock --trust-policy HighSecurity


## Example

    require 'application_controller_mock'
    class FoosController < ApplicationController
      def whatever
         session[:hello]=world
      end
    end


## Example with intialize hash

    foo = ApplicationConroller.new(:params=>{:a=>:b,:c=>:d)})
