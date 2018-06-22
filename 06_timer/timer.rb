class Timer
  def initialize
  	@seconds = 0
  end 


  def seconds=(seconds) #setter
    
  	@seconds = seconds
  	
  	hours = 0
  	minutes = 0


  	while seconds >= 3600
  	  hours += 1
  	  seconds -= 3600
  	end

  	while seconds >= 60
  		minutes += 1
  		seconds -= 60
  	end

  	if hours < 9
  	  hours = "0" + hours.to_s
    end

    if minutes < 9
      minutes = "0" + minutes.to_s
    end

    if seconds < 9
      seconds = "0" +seconds.to_s
    end


  	time_format = [hours,minutes,seconds]
  	@time_string = time_format.join(":")

  end


  def time_string #getter
  	@time_string
  end	


  def seconds #getter
  	@seconds
  end

  
end
