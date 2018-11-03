require './spec/spec_helper'
require './lib/iterator/book'
require './lib/iterator/bookshelf'
require './lib/iterator/bookshelf_iterator'

RSpec.describe 'BookshelfIterator' do
  before do
    @bookshelf = Bookshelf.new
    @bookshelf.add_book(Book.new('aaa'))
    @bookshelf.add_book(Book.new('bbb'))
    @bookshelf.add_book(Book.new('ccc'))
    @iterator  = @bookshelf.iterator
  end

  describe '#has_next?' do
    it 'return true' do
      expect(@iterator.has_next?).to eq true
    end
  end

  describe '#next' do
    it 'return correct book name' do
      expect(@iterator.next.name).to eq 'aaa'
      expect(@iterator.next.name).to eq 'bbb'
      expect(@iterator.next.name).to eq 'ccc'
    end
  end
end
