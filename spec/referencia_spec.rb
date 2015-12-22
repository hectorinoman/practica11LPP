require 'spec_helper'
require 'referencia'

describe Referencia do
     before :all do
        @a = Book.new('The Rspec book 2010') do
            autor 'Charles Lip'
            fecha 'April 29, 2014'
            serie 'ninguna'
            editorial 'Lisin'
            edicion '2010 edition'
        end
    
        
        @a2 = Newspaper.new('ABC') do
            autor 'Juan Carlos Espinosa'
            fecha '30 junio 2010'
            newspaper 'Nope'
        end
     end
     
         
    context "Clase Book" do
        it "Instancia de bibliografia" do
            @a.instance_of?(Bibliografia).should eq(false)
        end
        it "Jerarquia is ok" do
            #@a.is_a?(Newspaper).should eq(false)
        end
    end
    
    context "Clase Newspaper" do
        it "Pertenece a la clase Newspaper" do
            @a2.instance_of?(Newspaper).should eq(true)
        end
        it "Jerarquia is ok" do
            @a2.is_a?(Newspaper).should eq(true)
            @a2.is_a?(Bibliografia).should eq(true)
        end
    end
end
