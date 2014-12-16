#encoding: utf-8

class Naranjo
    attr_accessor :edad, :altura, :naranjas, :vivo
    
    def initialize
        @edad=0
        @altura=0
        @naranjas=0
        @vivo=true
    end
    
    def uno_mas
        if @vivo == true
            @edad=@edad+1
            @altura=@altura+0.5
            @naranjas=0 #Las naranjas viejas se caen del arbol
        
            if @altura > 10 && rand(2) > 0 #el arbol muere
                @vivo=false
                puts "El Arbol ha muerto"
            elsif @altura > 2 #crecen nuevas naranjas
                @naranjas= (@altura*15 -25).to_i
                puts "Este año, el arbol mide #{@altura} metros y ha dado #{@naranjas} naranjas"
            else
                puts "Este año, el arbol mide #{@altura} metros, pero es demasiado joven para dar naranjas"
            end
        else
            puts "El arbol sigue muerto"
        end
    end

end
