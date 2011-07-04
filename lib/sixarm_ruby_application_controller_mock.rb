# -*- coding: utf-8 -*-

=begin rdoc

= SixArm.com » Ruby » ApplicationController mock object for testing Rails

Author:: Joel Parker Henderson, joelparkerhenderson@gmail.com
Copyright:: Copyright (c) 2006-2011 Joel Parker Henderson
License:: See LICENSE.txt file

ApplicationController mock object for testing Rails.

This provides a flash hash, params hash, and session hash.

==Example
  require 'application_controller_mock'
  class FoosController < ApplicationController
    def whatever
       session[:hello]=world
    end
  end

==Example with intialize hash
  foo = ApplicationConroller.new(:params=>{:a=>:b,:c=>:d)})

=end

require 'action_controller'

class ApplicationController < ActionController::Base

  attr_accessor :flash
  attr_accessor :params
  attr_accessor :session

  def initialize(*ops)
    ops=ops.first||{}
    @flash=Hash.new.merge(ops[:flash]||{})
    @params=Hash.new.merge(ops[:params]||{})
    @session=Hash.new.merge(ops[:session]||{})
  end

  def redirect_to(*a)
    return a
  end

end
