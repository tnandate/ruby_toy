require './spec/spec_helper'
require './lib/factory_method/id_card'

RSpec.describe IdCard do
  before do
    @id_card = IdCard.new("John")
  end

  describe '#use' do
    it 'return use message' do
      expect{ @id_card.use }.to output("use John's card.\n").to_stdout
    end
  end

  describe '#get_owner' do
    it 'return the owner of id card' do
      expect(@id_card.get_owner).to eq 'John'
    end
  end
end
