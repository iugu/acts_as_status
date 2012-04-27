# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "acts_as_status/version"

Gem::Specification.new do |s|
  s.name        = "acts_as_status"
  s.version     = ActsAsStatus::VERSION
  s.authors     = ["alepaez"]
  s.email       = ["alepaezseq@gmail.com"]
  s.homepage    = "www.iugu.com.br"
  s.summary     = %q{Make ActiveRecord Attributes to act as status}
  s.description = %q{Make ActiveRecord Attributes to act as status}

  s.rubyforge_project = "acts_as_status"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
