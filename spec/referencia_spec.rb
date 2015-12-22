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
        
        @a1 = Magazine.new('La ciencia en su estado puro') do
            autor 'Hector Rodriguez'
            fecha '10 Junio 1982'
            magazine 'La casa Terrera'
        end
    
        
        @a2 = Newspaper.new('ABC') do
            autor 'Juan Carlos Espinosa'
            fecha '30 junio 2010'
            newspaper 'Nope'
        end
        
        @a3 = Electronic.new('Spotify MUsic') do
            autor 'Diland John'
            fecha '3 Marzo 1996'
            electronic 'en línea'
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
    
    context "Clase Magazine" do
        it "Pertenece a la clase Magazine" do
            @a1.instance_of?(Magazine).should eq(true)
        end
        it "Jerarquia is ok" do
            @a1.is_a?(Magazine).should eq(true)
            @a1.is_a?(Bibliografia).should eq(true)
        end
    end
    
    context "Clase Electronic" do
        it "Pertenece a clase Electronic" do
            @a3.instance_of?(Electronic).should eq(true)
        end
        it "Jerarquia is ok" do
            @a3.is_a?(Electronic).should eq(true)
            @a3.is_a?(Bibliografia).should eq(true)
        end
    end
    
    
    context "Almacena correctamente" do
        it "Comparar bibliografías @2 > @1" do
           expect(@a2 > @a1).to eq(true)
           expect(@a3 < @a).to eq(true)
        end

        it "Comparar bibliografías @3 > @" do
           expect(@a3 < @a).to eq(true)
        end
    end
end
