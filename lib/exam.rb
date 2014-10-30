require "exam/version"

class Examen
  attr_accessor :pregunta, :respuestas
  def initialize(pre, resp)
    @pregunta=pre
    @respuestas=resp
  end
  def mostrar_pregunta()
    puts "#{@preg}"
  end
end
