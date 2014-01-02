# encoding : utf-8

require 'net/http'
require 'date'

class CzechExchangeRates

	attr_reader :date, :currency, :exchange_rate

	def initialize
		@exchange_rate = 0	
	end

	PAGE_URI = 'http://www.cnb.cz/cs/financni_trhy/devizovy_trh/kurzy_devizoveho_trhu/denni_kurz.txt?date='

	def get_exchange_rate(currency, date = Date.new)
		table = get_table(date)

		first_line = table.split("\n").first

		table.each_line do |line|
			if line.match(currency)
				l = line.split('|')

				@exchange_rate = l[4].strip.gsub(',','.').to_f
				@currency = l[3]
				@date = Date.parse(first_line)

				return true
			end	
		end
	end

	def get_table(date = Date.new)
		uri = "#{PAGE_URI}#{date.day}.#{date.month}.#{date.year}"
		response = Net::HTTP.get_response(URI.parse(uri))

		return response.body
	end

end
