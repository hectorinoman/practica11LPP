require 'spec_helper'
require 'referencia'

describe Referencia do
    before :all do 
        @referencia1 = Bibliografia.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers Guide", "The Facets of Ruby", "Pragmatic Bookshelf", "4 edition", "July 7, 2013")
        @referencia2 = Bibliografia.new(["Scott Chacon"], "Pro Git 2009th Edition", "Pro", "Apress", "2009 edition", "August 27, 2009")
        @referencia3 = Electronic.new(["David Flanagan", "Yukihiro Matsumoto"], "The Ruby Programming Language", "Serie", "OReilly Media", " 1 edition", "February 4, 2008", "hectorinoman@gmail.com")
        @referencia4 = Book.new(["David Chelimsky", "Dave Astels", " Bryan Helmkamp", "Dan North", "Zach Dennis", "Aslak Hellesoy"], "The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends", "The Facets of Ruby", "Pragmatic Bookshelf", "1 edition", "December 25, 2010", "mi libro favorito")
        @referencia5 = Magazine.new(["Richard E. Silverman"], "Git Pocket Guide", "Serie", "OReilly Media", "1 edition",  "August 2, 2013","mi revista favorita")    
        
        @nodo1 = Nodo.new(@referencia1)
        @nodo2 = Nodo.new(@referencia2)
        @nodo3 = Nodo.new(@referencia3)
        @nodo4 = Nodo.new(@referencia4)
        @nodo5 = Nodo.new(@referencia5)
        
        @lista = ListaDoble.new()
    end  
    
    
    context "Node" do
        it "Debe existir un Nodo de la lista con su valor" do
            expect(@nodo1.value).to eq(@referencia1)
        end
        
        it "Existe un nodo con su siguiente" do
            expect(@nodo1.next_node).to eq(nil)
        end
        
        it "Existe un nodo con su anterior" do
            expect(@nodo1.prev_node).to eq(nil)
        end

    end
    

          
      context "Herencia" do
      it "Comprobar es una revista es una referencia" do
        expect(@referencia5.is_a?Bibliografia).to eq(true)
      end
      
      it "herencia en un objeto lista" do
        expect(@lista.is_a?Object).to eq(true)
      end
      
      
      context "Comparable" do

        it "La Referencia del Autor David Chelismsky es mayor que la de David Flanagan" do
          expect(@referencia3 > @referencia4).to eq(true)
        end
        
        it "La Referencia del Autor David Chelismsky es menor que la de David Flanagan" do
          expect(@referencia3 < @referencia4).to eq(false)
        end
        
        it "La Referencia Richard E. Silverman es menor que la David Chelimsky" do
          expect(@referencia5 < @referencia4).to eq(false)
        end
        
        it "La Referencia Richard E. Silverman es mayor que la David Chelimsky" do
          expect(@referencia5 > @referencia4).to eq(true)
        end
      
      end
      
        context "Enumerable" do
          before :each do
            @lista2 = ListaDoble.new()
            @lista2.add_many([8,7,17,32,47,2,3])
          end
    
          it "Comprobando maximo" do
            expect(@lista2.max).to eq(47)
          end
          
           it "Comprobando minimo" do
            expect(@lista2.min).to eq(2)
          end
          
          it "Numero de elementos" do
            expect(@lista2.count).to eq(7)
          end
          
          
        end
      

      
    
    
    
    end
    
    

end
