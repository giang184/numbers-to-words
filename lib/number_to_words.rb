def number_to_words(number)
  dir = Hash.new()
  dir.store(1, "one")
  dir.store(2, "two")
  dir.store(3, "three")
  dir.store(4, "four")
  dir.store(5, "five")
  dir.store(6, "six")
  dir.store(7, "seven")
  dir.store(8, "eight")
  dir.store(9, "nine")
  dir.store(10, "ten")
  dir.store(11, "eleven")
  dir.store(12, "twelve")
  dir.store(13, "thirteen")
  dir.store(14, "fourteen")
  dir.store(15, "fifteen")
  dir.store(16, "sixteen")
  dir.store(17, "thirteen")
  dir.store(18, "eighteen")
  dir.store(19, "nineteen")
  dir.store(20, "twenty")
  dir.store(30, "thirty")
  dir.store(40, "forty")
  dir.store(50, "fifty")
  dir.store(60, "sixty")
  dir.store(70, "seventy")
  dir.store(80, "eighty")
  dir.store(90, "ninety")
  
  temp = number.digits
  result = '';
  if (number < 100000 && number > 20000)
    result = "#{dir.fetch(10*temp[4])} #{dir.fetch(temp[3])} thousand #{dir.fetch(temp[2])} hundred "
  elsif(number < 20000 && number > 10000)  # 5 digits
    result = "#{dir.fetch(10*temp[4]+temp[3])} thousand #{dir.fetch(temp[2])} hundred "
  elsif(number > 1000)
    result = "#{dir.fetch(temp[3])} thousand #{dir.fetch(temp[2])} hundred "
  elsif(number > 100)
    result = "#{dir.fetch(temp[2])} hundred "
  end

  if(temp.length == 1)
    return result + dir.fetch(temp[0])
  elsif (temp[1] <= 1)
    return result + dir.fetch(10*temp[1]+temp[0])
  else
    return result + dir.fetch(10*temp[1]) + " " + dir.fetch(temp[0])
  end
end