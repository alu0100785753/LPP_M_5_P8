require 'spec_helper'
require 'exam'

describe Examen do
	
	describe "Simple_Selection" do 
	   before :all do
	     @ex= Examen.new("\nCual es el resultado de sumar 2 y 5?",[4,5,6, "ninguna de las anteriores"])
	   end
	   describe "comprobar pregunta y respuestas hecha" do
	        it "la pregunta esta hecha?" do
				@ex.pregunta.should eq("\nCual es el resultado de sumar 2 y 5?")
	        end
			it "Se han creado las respuestas?" do
				@ex.respuestas.should eq([4,5,6, "ninguna de las anteriores"])
			end
		end
		
		describe "funciones get" do
		    it "get_pregunta" do
		        @pregunta=@ex.get_pregunta
		        @pregunta.should eq("\nCual es el resultado de sumar 2 y 5?")
		    end
		    it "get_respuesta" do
		        @respuestas=@ex.get_respuestas
		        @respuestas.should eq([4,5,6, "ninguna de las anteriores"])
		    end
		end
		describe "mostrar pregunta y posibles respuestas por consola" do
		    it "mostrar_todo" do
		        @ex.mostrar_todo
		    end
		end
	end
	
	
	describe Node do
	  it "Debe existir un nodo" do	
	     @nodo = Node.new(2,3)
    end
	end

  
  describe List do
  	before :all do
  		@lista = List.new
  	end
  	describe "existe una lista" do
	    it "Debe existir una lista" do	
		     @lista = List.new
	    end
    end
    describe "se puede insertar y extraer" do
	    it "se puede insertar un elemento en la lista" do
	    	@lista.push(6)
	    	@lista.push(7)
    	end
	    it "se puede extraer un elemento de la lista" do
	    puts	@lista.pop
	    puts @lista.pop
	    end
	end
 end
  
  
  describe Vof do
  	
  	before :all do
	     @verofa= Vof.new("\n Es apropiado que una clase Tablero herede de una clase Juego")
	   end
	   
	   describe "comprobar pregunta y respuestas hecha" do
	        it "la pregunta esta hecha?" do
					@verofa.pregunta.should eq("\n Es apropiado que una clase Tablero herede de una clase Juego")
	        end
	        
	        it "Se han creado las respuestas?" do
				@verofa.respuestas.should eq(['verdadero', 'falso'])
			end
	   end
	   
	   describe "funciones get" do
		    it "get_pregunta" do
		        @pregunta=@verofa.get_pregunta
		        @pregunta.should eq("\n Es apropiado que una clase Tablero herede de una clase Juego")
		    end
		    it "get_respuesta" do
		        @respuestas=@verofa.get_respuestas
		        @respuestas.should eq(['verdadero', 'falso'])
		    end
		end
  	
  end
  
end