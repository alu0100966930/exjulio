RSpec.describe P5 do
  before (:all) do 
	  @carne_vaca = Alimento.new("carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
	  
  end
  context "p6" do 
	  it "Nombre para el alimento" do
		  puts "De la carne de vaca"
		  expect(@carne_vaca.nombre).to eq("carne de vaca")
	  end
	  it "Gases de efecto invernadero" do
		  expect(@carne_vaca.gei).to eq(50.0)
	  end
	  it "Terreno utilizado al año" do
		  expect(@carne_vaca.t).to eq(164.0)
	  end
  end
end
