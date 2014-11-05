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
  		@lista.push(1)
  		@lista.push(2)
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
	    puts @lista.pop
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
		
		describe "mostrar pregunta y posibles respuestas por consola" do
		    it "mostrar_todo" do
		        @verofa.mostrar_todo
		    end
		end
  end

end

	describe Doble_list do
		
		
		before :all do
			@doble_list = Doble_list.new

		end
		
	describe Node2 do
	  it "Debe existir un nodo" do	
	     @nodo2 = Node2.new(2,3,1)
    	end
    end
		
		describe "creando doble_list" do
			it "se crea la lista" do
				@doble_list= Doble_list.new
			end
		end
	describe "fucionan los push" do
			it "push por el principio" do
				@doble_list.push_ini(1)
			end
			it "push por el final" do
				@doble_list.push_fin(2)

			end
			
		end
		
		describe "funcionan los pop" do
			it "funciona el pop_ini" do
				puts @doble_list.pop_ini
			end
			it "funciona el pop_fin" do
				puts @doble_list.pop_fin
			end	
		end
	end
