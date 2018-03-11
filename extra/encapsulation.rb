class Train
	def initialize
		@seats_available = 40
	end

	def buy_ticket
		if @seats_available != 0
			@seats_available -= 1
			true
		else
			false
		end
	end
end

module BuyTicket
	def buy_ticket
		p @train.buy_ticket
	end
end

class TrainStation
	include BuyTicket
	def initialize(train)
		@train = train
	end
end

class TrainWebsite
	include BuyTicket
	def initialize(train)
		@train = train
	end
end

train = Train.new
station = TrainStation.new(train)
website = TrainWebsite.new(train)
39.times do |i|
	station.buy_ticket
end
website.buy_ticket
website.buy_ticket