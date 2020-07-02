RSpec.describe P5 do
  before (:all) do 
	  @hamburguesa = Alimento.new("hamburguesa", 1335, 2.9, 11, 9, 4160, 1470. 1070.53, 4.51)
	  @lasaña = Alimento.new("lasaña", 550, 3.0, 7.1, 8.6, 2170, 660, 361.63, 0.81)
  end
  context "p5" do 
	  it "huella nutricional" do
		  puts "De la hamburguesa"
		  expect(@hamburguesa.huella_nutricional).to eq(2.63)
		  puts "De la lasaña"
		  expect(@lasaña.huella_nutricional).to eq(1.25)
	  end
  end
end
