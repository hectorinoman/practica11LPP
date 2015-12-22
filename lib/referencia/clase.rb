class Bibliografia

    include Comparable

    attr_accessor :titulo, :autores, :fecha

    def <=> (other)
            get_year <=> other.get_year
    end

    def initialize(titulo, &bloque)
        self.titulo = titulo
        instance_eval &bloque if block_given?
    end

    def autor(name)
        @autores = []
        @autores << name
    end

    def fecha(date)
        @fecha = date
    end

    def get_autores
       s = ""
       i=0

       while i < @autores.size
            nombre, apellido = @autores[i].split(/\W+/)
            nombre = nombre[0] + "."
            autor = apellido + ', ' + nombre
            s += autor

            if !(i == @autores.size-1)
                s += " & "
            end
            i += 1
       end

       return s
    end

    def get_titulo
        titulo = @titulo
        return titulo
    end
    def get_fecha
        fecha = @fecha
        return fecha
    end
    def get_year
        year = @fecha[-4..-1]
        return year
    end
end


class Book < Bibliografia
    attr_accessor :serie, :editorial, :edicion

    def initialize (titulo, &bloque)
       super(titulo)
       instance_eval &bloque if block_given?
    end

    def serie(name)
        @serie = name
    end

    def editorial(name)
        @editorial = name
    end

    def edicion(number_of_edition)
        @edicion = number_of_edition
    end


    def to_s
       s = get_autores
       s += ' (' + get_year + '). ' + get_titulo + ' (' + @edicion + '). ' + @editorial
    end
end


class Newspaper < Bibliografia
    attr_reader :newspaper

    def initialize (titulo, &bloque)
        super(titulo)
        instance_eval &bloque if block_given?
    end

    def newspaper(name)
        @newspaper = name
    end


    def to_s
       s = get_autores
       s += ' (' + get_fecha + '). ' + get_titulo + '. ' + @newspaper
    end
end

class Magazine < Bibliografia
    attr_accessor :magazine

    def initialize (titulo, &bloque)
        super(titulo)
        instance_eval &bloque if block_given?
    end

    def magazine(name)
        @magazine = name
    end


    def to_s
       s = get_autores


       titulo = ""
       aux = get_titulo.split(/\W+/)

       aux.each do |element|
           titulo += element.capitalize
           titulo += ' '
       end

       titulo = titulo.chomp(" ")
       s += ' (' + get_year + '). ' + titulo + ". En " + @magazine
    end
end

class Electronic < Bibliografia
    attr_reader :electronic

    def initialize (titulo, &bloque)
        super(titulo)
        instance_eval &bloque if block_given?
    end

    def electronic(name)
        @electronic = name
    end

    def to_s
       s = get_autores
       s += ' (' + get_year + '). ' + get_titulo + ' [' + @electronic + ']. '
    end
end