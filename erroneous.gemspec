# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
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

  s.files       = Dir["{bin,lib}/**/*"] + %w(README.rdoc LICENSE Rakefile)
  s.test_files  = Dir["test/**/*"]

  s.add_dependency "rails", "> 3.0.0"
  s.add_development_dependency "appraisal"
end
