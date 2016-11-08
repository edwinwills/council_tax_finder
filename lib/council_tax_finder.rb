module CouncilTaxFinder
  class << self
    attr_accessor :app_id, :app_key
  end
end

require 'net/http'
require 'oj'
require 'council_tax_finder/version'
require 'council_tax_finder/base'
