require_relative 'baraja'

class Mano
	attr_accessor :mano
	def initialize
		@mano = []	
	end

	def generar baraja
		@mano << baraja.baraja.shift(2)
	end

	def jugar baraja
		@mano << baraja.baraja.shift()
		baraja.baraja.push(@mano[0][0])
		@mano[0].delete_at(0)
	end
end

b = Baraja.new

b.generar

m = Mano.new

m.generar b

puts "Mano: #{m.mano}"

puts "Baraja: #{b.baraja}"

m.jugar b

puts "Baraja: #{b.baraja.inspect}"

puts "Mano: #{m.mano}"


