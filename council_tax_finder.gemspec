Gem::Specification.new do |s|
  s.name        = 'council_tax_finder'
  s.version     = '0.0.1'
  s.date        = '2018-11-08'
  s.summary     = "Wrapper for the Council Tax Finder API"
  s.description = "Wrapper for the Council Tax Finder API from http://counciltaxfinder.com/"
  s.authors     = ["Edwin Wills"]
  s.email       = 'edwin@edwinwills.com'
  s.homepage    = 'http://rubygems.org/gems/council_tax_finder'
  s.license     = 'MIT'

  s.files       = Dir["{lib}/**/*", "*.md"]

  s.add_dependency "oj", "~> 2.17"
  s.add_development_dependency "rspec", "~> 3.5"
  s.add_development_dependency "webmock", "~> 1"
  s.add_development_dependency "vcr", "~> 2.1"
end