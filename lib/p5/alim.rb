class Alimento

	attr_accessor :nombre, :p, :ch, :l, :gei, :t
	def initialize(n, proteinas, carbohidratos, lipidos, geis, terreno)
		@nombre = n
		@p = proteinas
		@ch = carbohidratos
		@l = lipidos
		@gei = geis
		@t = terreno

	end
	#############PRACTICA 6########################
	
	def get_name
		@nombre
	end

	def get_gei
		@gei
	end

	def get_t
		@t
	end

	def val_energetico
		(@ch*4)+(@l*9)+(@p*4)
	end

	
end
