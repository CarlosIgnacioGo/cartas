require_relative 'zombie'

class Juego
	attr_accessor :zombies
	def initialize
		@zombies = []
		preparar
	end
	def preparar
		text = File.open("zombies_data.txt", "r"){|line| line.read}
		arrData = text.split
		arrData.map!{|ele| ele.to_i}
		x = 0;
		for i in 0..((arrData.length-1)/2)
			@zombies.push(Zombie.new arrData[x], arrData[x+1])
			x+=2			
		end
	end
end

x = Juego.new

puts x.zombies[0]
puts x.zombies[0].caminar
puts x.zombies[0].caminar
puts x.zombies[0].caminar
puts x.zombies[0].caminar
puts x.zombies[0]

