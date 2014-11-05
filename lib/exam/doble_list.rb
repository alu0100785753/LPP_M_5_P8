# create a Struct with :value and :next
Node2 = Struct.new(:value, :next, :prev)

class Doble_list
  
  attr_accessor :ini, :fin
  def initialize
    @ini=nil
    @fin=nil
  end
  
  def lista_vacia
    if @ini==nil
     true
    elsif
     false
    end
  end
  
  def push_ini(elemento)
    if lista_vacia==true
      @ini= Node2.new(elemento,nil,nil)
      @fin= @ini
    elsif
      nuevo= Node2.new(elemento,@ini,nil)
      #@ini.prev= nuevo
      @ini=nuevo
    end
  end
end