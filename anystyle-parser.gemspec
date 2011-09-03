# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'anystyle/parser/version'

Gem::Specification.new do |s|
  s.name        = 'anystyle-parser'
  s.version     = Anystyle::Parser::VERSION.dup
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Sylvester Keil']
  s.email       = ['http://sylvester.keil.or.at']
  s.homepage    = 'http://inukshuk.github.com/anystyle-parser'
  s.summary     = 'A parser for academic references.'
  s.description = 'A parser for academic references based on conditional random fields.'
  s.license     = 'FreeBSD'
  
  s.add_runtime_dependency('wapiti', '~>0.0')
  
  s.add_development_dependency('rake', ['~>0.9'])
  s.add_development_dependency('racc', ['~>1.4'])
  s.add_development_dependency('cucumber', ['~>1.0'])
  s.add_development_dependency('rspec', ['~>2.6'])
  s.add_development_dependency('ZenTest', ['~>4.6'])

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables  = []
  s.require_path = 'lib'

  s.rdoc_options      = %w{--line-numbers --inline-source --title "Anystyle\ Parser" --main README.md}
  s.extra_rdoc_files  = %w{README.md LICENSE}
  
end

# vim: syntax=ruby