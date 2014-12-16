#encoding: utf-8

class Naranjo
    attr_accessor :edad, :altura, :naranjas
    
    def initialize
        @edad=0
        @altura=0
        @naranjas=0
    end
    
    def uno_mas
        
       @edad=@edad+1
       @altura=@altura+0.5
    end

end
