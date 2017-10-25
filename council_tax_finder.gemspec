lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'council_tax_finder/version'

Gem::Specification.new do |s|
  s.name        = 'council_tax_finder'
  s.version     = CouncilTaxFinder::VERSION
  s.date        = '2017-10-25'
  s.summary     = 'Wrapper for the Council Tax Finder API'
  s.description = 'Wrapper for the Council Tax Finder API from http://counciltaxfinder.com/'
  s.authors     = ['Edwin Wills']
  s.email       = 'edwin@edwinwills.com'
  s.homepage    = 'http://rubygems.org/gems/council_tax_finder'
  s.license     = 'MIT'

  s.files       = Dir["{lib}/**/*", '*.md']

  s.add_dependency 'oj', '~> 3.3'
  s.add_development_dependency 'rspec', '~> 3.7'
  s.add_development_dependency 'webmock', '~> 3'
  s.add_development_dependency 'vcr', '~> 3.0'
  s.add_development_dependency 'rake', '~> 12.1'
end
