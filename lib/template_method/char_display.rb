require './lib/template_method/abstrart_display'

class CharDisplay < AbstractDisplay
  def initialize(ch)
    @ch = ch
  end

  def open
    print "<<"
  end

  def output
    print "#{@ch}"
  end

  def close
    print ">>"
  end
end
