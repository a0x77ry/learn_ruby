class Timer
  attr_accessor :seconds

  def initialize(seconds=0)
    @seconds = seconds
  end

  def time_string
    minutes = @seconds / 60
    secondsLeft = @seconds - minutes * 60

    hours = minutes / 60
    minutes -= hours * 60

    "#{padded(hours)}:#{padded(minutes)}:#{padded(secondsLeft)}"
  end

  def padded(num)
    numStr = num.to_s
    if numStr.length == 1
      numStr = "0" + numStr
    end
    numStr
  end
end
