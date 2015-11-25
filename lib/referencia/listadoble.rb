Nodo = Struct.new(:value, :next_node, :prev_node)

include Enumerable

class ListaDoble
    
   attr_accessor :first, :last, :value, :next_node, :prev_node

    def initialize
        @first = Nodo.new(nil)
        @first = nil
        @last = Nodo.new(nil)
        @last = nil
    end
    
    def add_first(nodo)
        aux = Nodo.new(nodo, nil, nil)
        if (@first == nil && @last == nil)
            @first = aux
            @last = aux
        else
            aux.next_node = @first
            @first.prev_node = aux
            @first = aux
        end
    end
    
    
    def add_last(nodo)
        aux = Nodo.new(nodo, nil, nil)
        aux.prev_node = @last
        @last.next_node = aux
        @last = aux
    end

    def del_first
        @first = @first.next_node
        @first.prev_node = nil
    end
    
    def del_last
        @last = @last.prev_node
        @last.next_node = nil
    end
    
    def each
        i = @first
        while (i != nil) 
            yield i.value
            i = i.next_node
        end
    end

    def add_many(nodo)
        nodo.each do |num| 
            self.add_first(num)
        end
    end
    

    
end