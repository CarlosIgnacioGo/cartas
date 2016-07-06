require_relative 'carta'

class Baraja
	attr_accessor :baraja

	def initialize 
		@baraja = []
	end

	def generar
		3.times do
			@baraja << Carta.new
		end
	end

	def barajar
		self.baraja.shuffle
	end
end







