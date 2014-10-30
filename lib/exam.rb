require "exam/version"

class Examen
  attr_accessor :pregunta, :respuestas
  def initialize(pre, resp)
    @pregunta=pre
    @respuestas=resp
  end
  def mostrar_todo()
    puts "#{@preg}"
    puts @respuestas
  end
end
