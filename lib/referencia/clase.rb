class Bibliografia
    
    include Comparable
    
    attr_accessor :autor, :titulo, :serie, :editorial, :edicion, :fecha
    
    def initialize(autor, titulo, serie, editorial, edicion, fecha)
        @autor = autor
        @titulo = titulo
        @serie = serie
        @editorial = editorial
        @edicion = edicion
        @fecha = fecha
        
    end
    
        def <=> (other)
            if @autor == other.autor
                @titulo <=> other.titulo
            else
                @autor <=> other.autor
            end
        end
end    

    
    
    class Book < Bibliografia
    
    attr_accessor :book
    
    def initialize(autor, titulo, serie, editorial, edicion, fecha, book)
        super(autor, titulo, serie, editorial, edicion, fecha)
        @book = book
    end
    end

    class Magazine < Bibliografia
        
        attr_accessor :magazine
        
        def initialize(autor, titulo, serie, editorial, edicion, fecha, magazine)
            super(autor, titulo, serie, editorial, edicion, fecha)
            @magazine = magazine
        end
    end

    class Electronic < Bibliografia
        
       attr_accessor :electronic
        
        def initialize(autor, titulo, serie, editorial, edicion, fecha, electronic)
            super(autor, titulo, serie, editorial, edicion, fecha)
            @electronic = electronic
        end
    
    end

