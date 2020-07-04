class Alimento

	attr_accessor :nombre, :energia, :sal, :ags, :fibra, :hmaterial, :hcarbono, :hhidrica, :terreno
	def initialize(n, e, s, a, f, hm, hc, hh, t)
		@nombre = n
		@energia = e
		@sal = s
		@ags = a
		@fibra = f
		@hmaterial = hm
		@hcarbono = hc
		@hhidrica = hh
		@terreno = t

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
