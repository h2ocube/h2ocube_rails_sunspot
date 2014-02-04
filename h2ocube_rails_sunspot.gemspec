# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = 'h2ocube_rails_sunspot'
  s.version     = '0.0.2'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Ben']
  s.email       = ['ben@h2ocube.com']
  s.homepage    = 'https://github.com/h2ocube/h2ocube_rails_sunspot'
  s.summary     = %q{Easy way to use sunspot for rails}
  s.description = %q{Easy way to use sunspot for rails}
  s.license     = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency 'sunspot_rails'
  s.add_dependency 'sunspot_solr'
end
