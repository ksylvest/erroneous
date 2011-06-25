# -*- encoding: utf-8 -*-
$:.push File.join(File.dirname(__FILE__), 'lib')
require "erroneous/version"

Gem::Specification.new do |s|
  s.name        = "erroneous"
  s.version     = Erroneous::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Kevin Sylvestre"]
  s.email       = ["kevin@ksylvest.com"]
  s.homepage    = "http://github.com/ksylvest/erroneous"
  s.summary     = "An easy way to display inline errors in forms"
  s.description = "Erroneous adds inline errors to Rails views in a simple, sentence like format."
  s.files       = Dir.glob("{bin,lib}/**/*") + %w(README.rdoc LICENSE)
end
