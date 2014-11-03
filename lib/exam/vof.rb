class Vof < Examen
    attr_accessor :pregunta, :respuestas
    def initialize(pre)
        @pregunta=pre
        @respuestas=['verdadero','falso']
    end
end