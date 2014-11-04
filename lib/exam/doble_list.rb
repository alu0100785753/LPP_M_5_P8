# create a Struct with :value and :next
Node = Struct.new(:value, :next, :prev)

class Doble_list
  
  attr_accessor :ini, :fin
  def initialize
    @ini=Node.new(nil,nil,nil)
    @fin=Node.new(nil,nil,nil)
  end
  
end