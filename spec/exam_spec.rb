require 'spec_helper'
require 'exam'

describe Examen do
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
