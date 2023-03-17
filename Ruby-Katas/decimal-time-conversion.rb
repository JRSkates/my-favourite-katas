#Write two functions, one that converts standard time to decimal time and one that converts decimal time to standard time.

#One hour has 100 minutes (or 10,000 seconds) in decimal time, yet its duration is the same as in standard time. 
#Thus a decimal minute consists of 36 standard seconds, which is 1/100 of an hour.
#Working time is usually rounded to Integer decimal minutes. 
#Thus one normal minute equals 0.02 decimal hours, while two normal minutes equal 0.03 decimal hours and so on.
#to_industrial(time) should accept either the time in minutes as an integer or a string of the format "h:mm". 
#Minutes will always consist of two digits in the tests (e.g., "0:05"); hours can have more. 
#Return a float that represents decimal hours (e.g. 1.75 for 1h 45m). Round to a precision of two decimal digits - do not simply truncate!
#to_normal(time) should accept a float representing decimal time in hours. Return a string that represents standard time in the format "h:mm".
#There will be no seconds in the tests. We'll neglect them for the purpose of this kata.

def to_industrial(time)
  if time.is_a?(String)
    timeSec = (time.split(":")[1].to_f / 60).round(2)
    timeMin = time.split(":")[0].to_f
    timeSec + timeMin
  else
    (time.to_f / 60).round(2)
  end
end

def to_normal(time)
  timeArr = time.divmod 1
  timeMins = (timeArr[1] / 100) * (60 / 1)
  timeMinsFinal = (timeMins.round(2) * 100).to_i
  timeMins == 0 ? "#{timeArr[0]}:00" : "#{timeArr[0]}:#{timeMinsFinal}" 
end

puts to_industrial("1:45")
puts to_normal(0.33)