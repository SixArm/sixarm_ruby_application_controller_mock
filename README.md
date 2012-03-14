# SixArm.com » Ruby » <br> ApplicationController mock object for testing Rails


* Docs: <http://sixarm.com/sixarm_ruby_application_controller_mock/doc>
* Repo: <http://github.com/sixarm/sixarm_ruby_application_controller_mock>
* Email: Joel Parker Henderson, <joel@sixarm.com>


## Introduction

ApplicationController mock object for testing Rails.

This provides a flash hash, params hash, and session hash.

For docs go to <http://sixarm.com/sixarm_ruby_application_controller_mock/doc>

Want to help? We're happy to get pull requests.


## Quickstart

Install:

    gem install sixarm_ruby_application_controller_mock

Bundler:

    gem "sixarm_ruby_application_controller_mock", "=1.2.6"

Require:

    require "sixarm_ruby_application_controller_mock"


## Example

    require 'application_controller_mock'
    class FoosController < ApplicationController
      def whatever
         session[:hello]=world
      end
    end


## Example with intialize hash
  
    foo = ApplicationConroller.new(:params=>{:a=>:b,:c=>:d)})

