# -*- coding: utf-8 -*-
require "minitest/autorun"
require "simplecov"
SimpleCov.start
require "sixarm_ruby_application_controller_mock"

class Testing < Minitest::Test

  def setup
   @mock = ApplicationController.new(
                                     :flash=>{'a'=>'b','c'=>'d'},
                                     :params=>{'e'=>'f','g'=>'h'},
                                     :session=>{'i'=>'j','k'=>'l'}
                                     )
  end

 def test_instantiation
  refute_nil(@mock,"mock")
 end

 def test_flash
  refute_nil(@mock.flash,"mock.flash")
  assert_equal({'a'=>'b','c'=>'d'},@mock.flash,"mock.flash")
 end

 def test_params
  refute_nil(@mock.params,"mock.params")
  assert_equal({'e'=>'f','g'=>'h'},@mock.params,"mock.params")
 end

 def test_session
  refute_nil(@mock.session,"mock.session")
  assert_equal({'i'=>'j','k'=>'l'},@mock.session,"mock.session")
 end

 def test_redirect_to
  assert_equal(['foo'],@mock.redirect_to('foo'))
 end

end
