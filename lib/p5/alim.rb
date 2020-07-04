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

	def impacto(x,bajo,alto)
		if(x<bajo)
			@impacto = 1.0
		elsif (x>alto)
			@impacto = 3.0
		else
			@impacto = 2.0
		end

	end

	def impacto2(x,bajo,alto)
		if(x>bajo)
			@impacto = 1.0
		elsif (x<alto)
			@impacto = 3.0
		else
			@impacto = 2.0
		end

	end

	def hsalud(ie, is, iags, iff)
		(ie + is + iags + iff)/4
	end

	def hambiental(ihm, ihc, ihh, it)
		(ihm + ihc + ihh + it)/4
	end

	def hnutricional(hsal, hamb)
		(hsal + hamb)/2
	end

	
end
