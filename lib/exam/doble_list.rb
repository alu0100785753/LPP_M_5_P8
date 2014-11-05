# create a Struct with :value and :next
Node2 = Struct.new(:value, :next, :prev)

class Doble_list
  
  attr_accessor :ini, :fin
  def initialize
    @ini=nil
    @fin=nil
  end
  
end