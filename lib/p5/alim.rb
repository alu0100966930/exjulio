class Alimentos

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
			@impacto = 1
		elsif (x>alto)
			@impacto = 3
		else
			@impacto = 2
		end

	end

	def impacto2(x,bajo,alto)
		if(x>bajo)
			@impacto = 1
		elsif (x<alto)
			@impacto = 3
		else
			@impacto = 2
		end

	end

end
