# create a Struct with :value and :next
Node = Struct.new(:value, :next)

class List
  
  attr_accessor :ini
  def initialize
    @ini=Node.new(nil,nil)
  end
  
end
