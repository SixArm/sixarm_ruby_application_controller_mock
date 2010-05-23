=begin rdoc

= SixArm Ruby Gem: ApplicationController mock object for testing Rails

Author:: Joel Parker Henderson, joelparkerhenderson@gmail.com
Copyright:: Copyright (c) 2006-2010 Joel Parker Henderson
License:: CreativeCommons License, Non-commercial Share Alike
License:: LGPL, GNU Lesser General Public License

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


require 'sixarm_ruby_action_controller_mock'

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
