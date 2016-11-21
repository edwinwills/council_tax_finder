# Council Tax Finder gem
API wrapper for the Council Tax Finder API - http://counciltaxfinder.com

## Installation
`gem install council_tax_finder`

## Usage
`CouncilTaxFinder::Lookup.new.get(postcode: 'AB12 345', door: '5')`

You can leave out door (the name/number of the property) if you don't know it,
and the result returned will be an array of all residential properties at that
address.

If you supply the argument `page` you can get a specific page of results,
e.g. `CouncilTaxFinder::Lookup.new.get(postcode: 'AB12 345', page: 2)`
