class Zombie
	attr_accessor :x, :y, :corX, :corY

	def initialize x,y
		@x = x
		@y = y
		@corX = (rand()*50).to_i
		@corY = (rand()*50).to_i
	end

	def caminar
		if @x > @corX
			@x = @x - 1
		else
			@x = @x + 1
		end
	end

	def to_s
		"x: #{@x} - y: #{@y} - corX: #{@corX} - corY: #{@corY} - Braiiiiins"
	end
end


