require './spec/spec_helper'
require './lib/adapter/banner'
require './lib/adapter/print_banner'

RSpec.describe PrintBanner do
  before do
    @print_banner = PrintBanner.new('Hello')
  end

  describe '#print_weak' do
    it 'return (hello)' do
      expect(@print_banner.print_weak).to eq '(Hello)'
    end
  end

  describe '#print_strong' do
    it 'return *Hello*' do
      expect(@print_banner.print_strong).to eq '*Hello*'
    end
  end
end
