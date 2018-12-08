require './lib/factory_method/product'
include FrameWork

class IdCard < Product
  def initialize(owner)
    @owner = owner
  end

  def use
    puts "use #{@owner}'s card."
  end

  def get_owner
    @owner
  end
end
