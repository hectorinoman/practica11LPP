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
end
