Nodo = Struct.new(:value, :next_node, :prev_node)

include Enumerable

class ListaDoble
    
   attr_accessor :first, :last, :value, :next_node, :prev_node

    def initialize
        @first = Nodo.new(nil)
        @last = @first
    end
    
    def add_first_empty(nodo)
        nodo.next_node = @first
        nodo.prev_node = @last
        @first = nodo
        @last = nodo
    end
    
    def add_first(nodo)
        nodo.next_node = @first
        @first.prev_node = nodo
        @first = nodo
    end
    
    def add_last(nodo)
        nodo.prev_node = @last
        @last.next_node = nodo
        @last = nodo
    end

    def del_first
        @first = @first.next_node
        @first.prev_node = nil
    end
    
    def del_last
        @last = @last.prev_node
        @last.next_node = nil
    end
    

    
end