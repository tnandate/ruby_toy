require './spec/spec_helper'
require './lib/template_method/abstrart_display'
require './lib/template_method/string_display'

RSpec.describe StringDisplay do
  before do
    @string_display = StringDisplay.new("Hello, World.")
    @expected_value = "+-------------+\n|Hello, World.|\n|Hello, World.|\n|Hello, World.|\n|Hello, World.|\n|Hello, World.|\n+-------------+\n"
  end

  describe '#open' do
    it 'return line' do
      expect{ @string_display.open }.to output("+-------------+\n").to_stdout
    end
  end

  describe '#output' do
    it 'return string value' do
      expect{ @string_display.output }.to output("|Hello, World.|\n").to_stdout
    end
  end

  describe '#close' do
    it 'return line' do
      expect{ @string_display.close }.to output("+-------------+\n").to_stdout
    end
  end

  describe '#display' do
    it 'return expected value' do
      expect{ @string_display.display }.to output(@expected_value).to_stdout
    end
  end
end
