require './spec/spec_helper'
require './lib/template_method/abstrart_display'

RSpec.describe AbstractDisplay do
  before do
    @abstract_display = AbstractDisplay.new
  end

  describe '#open' do
    it 'return nil' do
      expect(@abstract_display.open).to eq nil
    end
  end

  describe '#output' do
    it 'return nil' do
      expect(@abstract_display.output).to eq nil
    end
  end

  describe '#close' do
    it 'return nil' do
      expect(@abstract_display.close).to eq nil
    end
  end

  describe '#display' do
    it 'return nil' do
      expect(@abstract_display.display).to eq nil
    end
  end
end
