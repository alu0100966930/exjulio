class Alimento

	include Comparable
	include Enumerable

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

	def get_p
		@p
	end

	def get_l
		@l
	end

	def get_h
		@ch
	end

	def val_energetico
		(@ch*4)+(@l*9)+(@p*4)
	end
	def <=>(other)
		@nombre <=> other.nombre
	end
	def each
		@nombre
	end

end

Node = Struct.new(:value, :next, :prev)
class List
	include Enumerable

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
	def each
		n = @head
		while (n != nil)
			yield n.value
			n = n.next
		end
	end
end	

class Plato
	include Enumerable

	attr_accessor :n_plato, :al, :gr

	def initialize(n, a, g)
		@n_plato = n
		@al = a
		@gr = g
	end
	
	def pp
		i = 0
		j = 0
		p = 0
		
		@gr.each do |x| 
			gramos = x
			i += 1
			@al.each do |y|
				j += 1
				if(i ==j)
					p += gramos*y.get_p/100
				end
			end
			j=0
		end
		total = 0
		@gr.each do |x|
			total += x
		end
		p = (p*100)/total
		return p
	end

	def pl
		i = 0
		j = 0
		l = 0

		@gr.each do |x|
			gramos = x
			i += 1
			@al.each do |y|
				j += 1
				if(i == j)
					l += gramos*y.get_l/100
				end
			end
			j = 0
		end
		total = 0
		@gr.each do |x|
			total += x
		end
		l = (l*100)/total
		return l
	end

	def ph
		i = 0
		j = 0
		h = 0

		@gr.each do |x|
			gramos = x
			i += 1
			@al.each do |y|
				j += 1
				if(i == j)
					h += gramos*y.get_h/100
				end
			end
			j = 0
		end
		total = 0
		@gr.each do |x|
			total += x
		end
		h = (h*100)/total
		return h
	end

	def each
		val = 0
		@al.each do |x|
			val = x.val_energetico
		end
		return val
	end
end
