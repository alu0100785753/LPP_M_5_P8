# create a Struct with :value and :next
Node = Struct.new(:value, :next)

class List
  
  attr_accessor :ini
  def initialize
    @ini=Node.new(nil,nil)
  end
  def push(elemento)
    if @ini.value== nil
      @ini.value=  elemento
    elsif
      @nuevo= Node.new(elemento,@ini)
      @ini= @nuevo
    end
        
  end
  
end