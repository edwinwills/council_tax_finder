require 'spec_helper'

RSpec.describe CouncilTaxFinder::Lookup do
  subject { CouncilTaxFinder::Lookup.new }
  let(:response) { Oj.load(File.read('spec/fixtures/response_body.json')) }

  it 'returns council tax information' do
    VCR.use_cassette("lookup/get") do
      expect(subject.get(postcode: 'W12 8JD')).to eq(response)
    end
  end
end
