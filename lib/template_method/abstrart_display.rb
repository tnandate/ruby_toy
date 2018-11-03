class AbstractDisplay
  def open
  end

  def output
  end

  def close
  end

  def display
    open
    5.times do
      output
    end
    close
  end
end
