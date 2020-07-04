require 'lib/p5/alim'
require 'test/unit'

class Ptest < Test::Unit::TestCase
	def setup
		@hamburguesa = Alimento.new("hamburguesa", 1335, 2.9, 11, 9, 4160, 1470, 1070.53, 4.51)
		@lasaña = Alimento.new("lasaña", 550, 3.0, 7.1, 8.6, 2170, 660, 361.63, 0.81)
		
		@e = @hamburguesa.impacto(1335.0, 670.0, 830.0)
		@s = @hamburguesa.impacto(2.9, 2.0, 3.3)
		@f = @hamburguesa.impacto2(11.0, 8.0, 6.0)
		@ags = @hamburguesa.impacto(9.0, 6.7, 10.0)
		@hm = @hamburguesa.impacto(4160.0, 2670.0, 4000.0)
		@hc = @hamburguesa.impacto(1470.0, 800.0, 1200.0)
		@hh = @hamburguesa.impacto(1070.53, 640.0, 975.0)
		@t = @hamburguesa.impacto(4.51, 1.25, 1.875)
		
		@hsalud = @hamburguesa.hsalud(@e, @s, @f, @ags)
		@hambiental = @hamburguesa.hambiental(@hm, @hc, @hh, @t)

		@hnutricional = @hamburguesa.hnutricional(@hsalud, @hambiental)
	end

	def tear_down
		#codigo
	end

	def test_simple
		assert_equal(2.63, @hnutricional.to_f)
	end
end

