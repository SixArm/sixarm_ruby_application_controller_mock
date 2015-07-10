# -*- coding: utf-8 -*-

require "action_controller"

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
