require './spec/spec_helper'
require './lib/adapter/banner'

RSpec.describe Banner do
  before do
    @banner = Banner.new("Hello")
  end

  describe '#show_with_paren' do
    it 'return (hello)' do
      expect(@banner.show_with_paren).to eq '(Hello)'
    end
  end

  describe '#show_with_aster' do
    it 'return *Hello*' do
      expect(@banner.show_with_aster).to eq '*Hello*'
    end
  end
end
