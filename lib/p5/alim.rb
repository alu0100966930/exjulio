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

Node = Struct.new(:value, :next, :prev)
class List

	attr_accessor :value, :next, :prev, :head, :tail, :size
	def initialize
		@head = Node.new
		@tail = Node.new
		@size = 0
	end

	def push(n)
		if(@size == 0)
			@tail = n
			@tail.next = nil
		else
			@head.prev = n
			n.next = @head
		end
		@head = n
		n.prev = nil
		@size = @size + 1
	end

	def pop_head
		if(@size == 0)
			puts "Lista vacía"
		else
			drop = @head.value
			(@head.next).prev = nil
			@head = @head.next
			@size = @size - 1
			return drop
		end
	end
	def pop_tail
		if(@size == 0)
			puts "Lista vacía"
		else
			drop = @tail.value
			(@tail.prev).next = nil
			@tail = @tail.prev
			@size = @size - 1
			return drop
		end
	end

end		
