require './spec/spec_helper'
require './lib/template_method/abstrart_display'
require './lib/template_method/char_display'

RSpec.describe CharDisplay do
  before do
    @char_display = CharDisplay.new("H")
  end

  describe '#open' do
    it 'return <<' do
      expect{ @char_display.open }.to output('<<').to_stdout
    end
  end

  describe '#output' do
    it 'return ch value' do
      expect{ @char_display.output }.to output('H').to_stdout
    end
  end

  describe '#close' do
    it 'return >>' do
      expect{ @char_display.close }.to output('>>').to_stdout
    end
  end

  describe '#display' do
    it 'return <<HHHHHH>>' do
      expect{ @char_display.display }.to output('<<HHHHH>>').to_stdout
    end
  end
end
