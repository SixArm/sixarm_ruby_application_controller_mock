# -*- coding: utf-8 -*-

Gem::Specification.new do |s|

  s.name              = "sixarm_ruby_application_controller_mock"
  s.summary           = "SixArm.com » Ruby » ApplicationContoller mock"
  s.description       = "ApplicationContoller mock object for testing Ruby On Rails"
  s.version           = "1.2.7"

  s.author            = "SixArm"
  s.email             = "sixarm@sixarm.com"
  s.homepage          = "http://sixarm.com/"
  s.licenses          = ["BSD", "GPL", "MIT", "PAL", "Various"]

  s.signing_key       = "/opt/keys/sixarm/sixarm-rsa-4096-x509-20150314-private.pem"
  s.cert_chain        = ["/opt/keys/sixarm/sixarm-rsa-4096-x509-20150314-public.pem"]

  s.platform          = Gem::Platform::RUBY
  s.require_path      = "lib"
  s.has_rdoc          = true

  s.files = [
    ".gemtest",
    "CHANGES.md",
    "LICENSE.md",
    "Rakefile",
    "README.md",
    "VERSION",
  ]

  s.test_files = [
    "test/sixarm_ruby_application_controller_mock_test.rb"
  ]

  s.add_dependency('sixarm_ruby_action_controller_mock', '>= 1.0.0', '< 2')

end
