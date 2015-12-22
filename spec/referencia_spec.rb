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
     end
     
         
    context "Clase Book" do
        it "Instancia de bibliografia" do
            @a.instance_of?(Bibliografia).should eq(false)
        end
        it "Jerarquia is ok" do
            #@a.is_a?(Newspaper).should eq(false)
        end
    end
end
