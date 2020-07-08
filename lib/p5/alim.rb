#clase alimento
class Alimento

	include Comparable
	include Enumerable

	attr_accessor :nombre, :p, :ch, :l, :gei, :t
	
	#método initialize
	def initialize(n, proteinas, carbohidratos, lipidos, geis, terreno)
		@nombre = n
		@p = proteinas
		@ch = carbohidratos
		@l = lipidos
		@gei = geis
		@t = terreno

	end
	#############PRACTICA 6########################
	#get_name
	def get_name
		@nombre
	end
	#get_gei
	def get_gei
		@gei
	end
	#get_t
	def get_t
		@t
	end
	#m get_p
	def get_p
		@p
	end
	#m get_l
	def get_l
		@l
	end
	#m get_h
	def get_h
		@ch
	end
	#m val_energetico
	def val_energetico
		(@ch*4)+(@l*9)+(@p*4)
	end
	#m comparable
	def <=>(other)
		@nombre <=> other.nombre
	end
	#m pal each enuerable
	def each
		@nombre
	end

end
#estructura del nodo
Node = Struct.new(:value, :next, :prev)
#clase lista
class List
	include Enumerable

	attr_accessor :value, :next, :prev, :head, :tail, :size
	
	#initialize
	def initialize
		@head = Node.new
		@tail = Node.new
		@size = 0
	end
	#me push
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
	#M pop_head
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
	#m pop_tail
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
	#each pal enumerable
	def each
		n = @head
		while (n != nil)
			yield n.value
			n = n.next
		end
	end
end	
#clase plato
class Plato
	include Enumerable

	attr_accessor :n_plato, :al, :gr
	#intialddf
	def initialize(n, a, g)
		@n_plato = n
		@al = a
		@gr = g
	end
	#p prot
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
	# p lip
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
	#p hid
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
	#each otro pa, enumerbale
	def each
		val = 0
		@al.each do |x|
			val = x.val_energetico
		end
		return val
	end
end
