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

  
 # describe List do
 # 	before :all do
 # 		@lista = List.new
 # 		@lista.push(1)
 # 		@lista.push(2)
 # 	end
  #	describe "existe una lista" do
#	    it "Debe existir una lista" do	
#		     @lista = List.new
#	    end
 #   end
 #   describe "se puede insertar y extraer" do
#	    it "se puede insertar un elemento en la lista" do
#	    	@lista.push(6)
#	    	@lista.push(7)
 #   	end
#	    it "se puede extraer un elemento de la lista" do
#	    puts @lista.pop
#	    puts @lista.pop
#	    end
#	end
 #end

  
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
				@doble_list.push_ini(2)
					@doble_list.push_ini(3)

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
	describe Examen do

		before :all do
			@preg1= Examen.new("\nCual es el resultado de sumar 2 y 5?",[4,5,6, "ninguna de las anteriores"])
			@preg2= Examen.new("\nCual es el resultado de sumar 2 y 5?",[4,5,6, "ninguna de las anteriores"])
			@preg3= Vof.new("\nEs 7 el resultado de sumar 2 y 5?")
			@preg4= Vof.new("\nAprobaras lpp?")
			@preg1.dificultad=2
			@preg2.dificultad=2
			@preg3.dificultad=1
			@preg4.dificultad=10
		end
		describe "comparando preguntas" do
			
			it "la pregunta 1 es igual a la pregunta 2" do
					expect(@preg1==@preg2).to eq(true) 
			end
			it "la pregunta 1 es igual a la pregunta 3" do
					expect(@preg1==@preg3).to eq(false) 
			end
			it "la pregunta 3 es menor que la pregunta 2" do
					expect(@preg3<@preg2).to eq(true) 
			end
			it "la pregunta 2 es mayor que la pregunta 3" do
					expect(@preg2>@preg3).to eq(true) 
			end
			it "la pregunta 2 es mayor o igual que la pregunta 3" do
					expect(@preg2>=@preg3).to eq(true) 
			end
			it "la pregunta 2 es menor o igual que la pregunta 1" do
					expect(@preg2<=@preg1).to eq(true) 
			end
		end
		
#		describe Doble_list do
			
			before :all do
				@lista= Doble_list.new
				@lista.push_ini(@preg1)
				@lista.push_ini(@preg2)
				@lista.push_ini(@preg3)
				@lista.push_ini(@preg4)
			end
		
		describe "Probando el enumerable" do
				it "funciona maximo" do
					expect(@lista.max).to eq(@preg4)
				end
				it "funciona minimo" do
					expect(@lista.min).to eq(@preg2) #tiene que tirar un error porque el minimo es @preg3.
				end
				it "funciona minimo" do
					expect(@lista.min).to eq(@preg3)
				end
				it "funciona all" do
					expect(@lista.all?).to eq(true)
				end
			end
		end
#end