require 'bundler/setup'
Bundler.setup

require 'council_tax_finder'
require 'vcr'

VCR.configure do |config|
  config.cassette_library_dir = "spec/vcr"
  config.hook_into :webmock
end

RSpec.configure do |config|
  # some (optional) config here
end
