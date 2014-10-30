require 'spec_helper'
require 'exam'

describe Examen do
   before :all do
     @ex= Examen.new("\nQue hora es?",['1','2','3'])
   end
   describe "mostrar" do
     it "la pregunta esta hecha?" do
			    @ex.pregunta.should eq("\nQue hora es?")
		   end
		  it "Se crean las respuestas?" do
			    @ex.respuestas.should eq(['1','2','3'])
		  end
	  end
end
