def everywhere?(list, value)
  pair = 1

  list.each do |n|

    if n == value
      pair = 1
    elsif pair == 1
      pair = 0
    else
      return false
    end
  end

  true
end

def sum2(list)
  if list.size >= 2
    return list[0] + list[1]
  elsif list.size == 1
    return list[0]
  end

  return(0)
end

def has_bad?(str)
  return str[0..2] == "bad" || str[1..3] == "bad"
end

def count_hi(str)
  list = str.split(//)

  print "#{list}"

  his = 0
  is_hi = false

  list.each do |n|

    if n == "h"
      is_hi = true
    elsif n == "i"
      if is_hi
        his += 1
      end
      is_hi = false
    else
      is_hi = false
    end

  end

  return(his)

end
