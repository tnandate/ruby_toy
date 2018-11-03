require './lib/template_method/abstrart_display'

class StringDisplay < AbstractDisplay
  def initialize(string)
    @string = string
  end

  def open
    print_line
  end

  def output
    puts "|#{@string}|"
  end

  def close
    print_line
  end

  def print_line
    print '+'
    @string.length.times do
      print '-'
    end
    puts '+'
  end
end
