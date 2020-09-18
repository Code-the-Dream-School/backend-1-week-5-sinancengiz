class Timer
  #write your code here
  attr_accessor :seconds
  def initialize(seconds = 0)
    @seconds = seconds
  end

  def time_string
    time = Time.at(@seconds).utc.strftime("%H:%M:%S")
    return time
  end

end

