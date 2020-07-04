RSpec.describe P5 do
  before (:all) do 
	  @carne_vaca = Alimento.new("carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
	  
	  @n1 = Node.new("Bencomo", nil, nil)
	  @n2 = Node.new("Karmele", nil, nil)
	
	  @lista1 = List.new

	  @lista1.push(@n1)
	  @lista1.push(@n2)

  end
  context "Alimento" do 
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
	  it "Método para el nombre" do
		  expect(@carne_vaca.get_name).to eq("carne de vaca")
	  end
	  it "Método para las emisiones de gases" do 
		  expect(@carne_vaca.get_gei).to eq(50.0)
	  end
	  it "Método para el terreno" do 
		  expect(@carne_vaca.get_t).to eq(164.0)
	  end
	  it "Valor energético" do 
		  expect(@carne_vaca.val_energetico).not_to eq(nil)
	  end
  end

  context "Lista" do
	  it "Existe un nodo con sus datos, su siguiente y su previo" do
		  puts "Su dato" 
		  expect(@lista1.head.value).to eq("Karmele")
		  puts "Su siguiente"
		  expect(@lista1.head.next).not_to eq(nil)
		  puts "Su anterior"
		  expect(@lista1.head.prev).to eq(nil)
	  end
  end
end
