# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "acts_as_status/version"

Gem::Specification.new do |s|
  s.name        = "acts_as_status"
  s.version     = ActsAsStatus::VERSION
  s.authors     = ["alepaez"]
  s.email       = ["alepaezseq@gmail.com"]
  s.homepage    = "https://github.com/iugu/acts_as_status"
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
  
  s.add_dependency('activerecord', '>= 3.0.0') 
  s.add_dependency('activemodel', '>= 3.0.0') 
  s.add_dependency('activesupport', '>= 3.0.0') 

end
