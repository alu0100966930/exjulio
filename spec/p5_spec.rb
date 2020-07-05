RSpec.describe P5 do
  before (:all) do 
	  @carne_vaca = Alimento.new("carne de vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
	  @carne_cordero = Alimento.new("carne de cordero", 18.0, 0.0, 17.0, 20.0, 185.0)
	  @camarones = Alimento.new("camarones", 17.6, 1.5, 0.6, 18.0, 2.0)
	  @cerveza = Alimento.new("cerveza", 0.5, 3.6, 0.0, 0.24, 0.22)
	  @lentejas = Alimento.new("lentejas", 23.5, 52.0, 1.4, 0.4, 3.4)
	  @huevos = Alimento.new("huevos", 13.0, 1.1, 11.0, 4.2, 5.7)

	  @n1 = Node.new("Bencomo", nil, nil)
	  @n2 = Node.new("Karmele", nil, nil)
	  @n = Node.new("Martin", nil, nil)


	  @lista1 = List.new
	  
	  @lista1.push(@n)
	  @lista1.push(@n1)
	  @lista1.push(@n2)

	  @esp1 = Node.new(@carne_cordero, nil, nil)
	  @esp2 = Node.new(@camarones, nil, nil)
	  @esp3 = Node.new(@cerveza, nil, nil)

	  @española = List.new

	  @española.push(@esp1)
	  @española.push(@esp2)
	  @española.push(@esp3)
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
	  it "Lista con cabeza y cola" do
		  puts "Cabeza"
		  expect(@lista1.head).not_to eq(nil)
		  puts "Cola"
		  expect(@lista1.tail).not_to eq(nil)
	  end
	  it "Se pueden insertar 1 y más elementos" do
		  expect(@lista1.size).to eq(3)
	  end
	  it "Se extrae el primer elemento de la lista" do
		  @lista1.pop_head
		  expect(@lista1.size).to eq(2)
	  end
	  it "Se extrae el último elemento de la lista" do 
		  @lista1.pop_tail
		  expect(@lista1.size).to eq(1)
	  end
	  it "Emisiones diarias del gei" do 
		  suma = 0.0
		  @española.collect{|x| suma += x.gei}
		  expect(suma.to_i).to eq(38)
	  end
  end
end
