require './lib/factory_method/factory'
include FrameWork

class IdCardFactory < Factory
  def initialize
    @owners = []
  end

  def create_product(owner)
    IdCard.new(owner)
  end

  def register_product(product)
    @owners << product.get_owner
  end

  def get_owners
    @owners
  end
end
