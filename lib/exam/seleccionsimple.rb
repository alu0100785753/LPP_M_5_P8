class Examen
  include Comparable
  attr_accessor :pregunta, :respuestas, :dificultad
  def initialize(pre, resp)
    @pregunta=pre
    @respuestas=resp
  end
  def <=>(other)
    @dificultad<=>other.dificultad
  end
  def ==(other)
    @pregunta==other.pregunta
  end
  def get_pregunta()
    return @pregunta
  end

  def get_respuestas()
    return @respuestas
  end
  def mostrar_todo()
    puts @pregunta
      for i in @respuestas
      puts i
      end
  end
end