class CouncilTaxFinder::Lookup

  API_ENDPOINT = "http://app.counciltaxfinder.com/counciltaxfinder/counciltax"

  def initialize
  end

  def get(postcode:, door: nil, page: 1)
    @postcode = postcode.gsub(' ', '').downcase
    @door = door
    @page = page
    Oj.load(::Net::HTTP.get(api_endpoint))
  rescue Oj::ParseError => ex
    {}
  end

  private

  def api_endpoint
    URI("#{API_ENDPOINT}/#{@postcode}?door=#{@door}&page=#{@page}")
  end
end
