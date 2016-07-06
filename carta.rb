class Carta
	attr_accessor :pinta, :numero

	def initialize
		@pinta = crearPinta
		@numero = crearNumero
	end

	def crearPinta
		pintas = ["<3","<>","->","-3"]
		return pintas[(rand()*pintas.length).to_i]
	end

	def crearNumero
		numero = [2,3,4,5,6,7,8,9,10,"J","Q","K","A"]
		return numero[(rand()*numero.length).to_i]
	end

	def to_s
		puts "#{numero}, #{pinta}"
	end
end


