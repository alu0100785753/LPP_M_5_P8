# create a Struct with :value and :next
Node2 = Struct.new(:value, :next, :prev)

class Node2
  include Comparable
  def <=>(other)
    value<=>other.value
  end
end

class Doble_list
  include Enumerable
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
  def push_fin(elemento)

    if lista_vacia==true
      @fin= Node2.new(elemento,nil,nil)
      @ini= @fin
    elsif
      nuevo= Node2.new(elemento, nil, @fin)
      #@fin.next= nuevo
      @fin=nuevo
    end
  end
  
  def pop_ini
    
      aux=@ini
      @ini=aux.next
      aux.value
  end
  
   def pop_fin
      aux=@fin
      @fin=aux.prev
      aux.value
   end
end