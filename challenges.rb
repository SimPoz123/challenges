def everywhere?(list, value)
  pair = 1
  everywhere = true

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
