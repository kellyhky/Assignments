class Timer
 attr_accessor :seconds
 
 def initialize
  @seconds = 0
 end
 
 def padded(num)
  if num < 10
   return "0#{num}"
  else
   return num.to_s
  end
 end
 
 def time_string
  hours = 0
  minutes = 0
  seconds_rem = 0
  hours = (@seconds/3600).floor
  minutes = ((@seconds - hours*3600)/60).floor
  seconds_rem = @seconds - hours*3600 - minutes*60
  return "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds_rem)}"
 end

end

