Gem::Specification.new do |s|
	s.name = 'czech_exchange_rates'
	s.version = '0.0.2'
	s.date = '2014-07-19'
	s.summary = "CNB exchange rates grabber"
	s.description = "Simple gem for grabbing course from Czech National Bank course table"
	s.authors = ["Adam Tomeček"]
	s.email = "adam.tomecek@gmail.com"
	s.homepage = 'https://github.com/adamtomecek/czech_exchange_rates'

	s.files = [
	   	"lib/czech_exchange_rates.rb",
	   	"spec/spec_helper.rb",
	   	"spec/czech_exchange_rates_spec.rb"
	]

	s.test_files = ["spec/spec_helper.rb", "spec/czech_exchange_rates_spec.rb"]
	s.require_paths = ["lib"]
end
