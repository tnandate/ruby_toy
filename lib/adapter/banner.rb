class Banner
  attr_reader :string

  def initialize(string)
    @string = string
  end

  def show_with_paren
    "(#{string})"
  end

  def show_with_aster
    "*#{string}*"
  end
end
