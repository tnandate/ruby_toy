require './spec/spec_helper'
require './lib/factory_method/id_card_factory'

RSpec.describe IdCardFactory do
  before do
    @id_card_factory = IdCardFactory.new
    @expected_id_card = IdCard.new('John')
  end

  describe '#create' do
    it 'return an array included created id_cards owner name' do
      expect(@id_card_factory.create('John')).to eq ['John']
    end
  end

  describe '#create_product' do
    it 'return created IdCard model' do
      expect(@id_card_factory.create_product('John')).to be_a(IdCard)
    end
  end

  describe 'register_product' do
    it 'return an array included expected_id_card owner' do
      expect(@id_card_factory.register_product(@expected_id_card)).to eq ['John']
    end
  end

  describe 'get_owners' do
    before do
      @id_card_factory.register_product(@expected_id_card)
      @id_card_factory.register_product(@expected_id_card)
    end

    it 'return an array included 2 owner name' do
      expect(@id_card_factory.get_owners).to eq ['John', 'John']
    end
  end
end
