# encoding : utf-8

require_relative 'spec_helper'

require 'date'

describe CzechExchangeRates do

	context 'returns course for currency and date' do

		it 'gets exchange rate table' do
			subject.get_table.should be_instance_of String
		end

		it 'finds exchange rate for currency' do
			date = Date.parse('9.10.2012')
			subject.get_exchange_rate('EUR', date)
	
			subject.date.should == date	
			subject.currency.should == 'EUR'
			subject.exchange_rate.should be_instance_of Float
			subject.exchange_rate.should > 0
		end

	end

end
