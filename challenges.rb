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

def common_end?(a, b)
  return a[0] == b[0] || a[-1] == b[-1]
end

def count_evens(list)
  evens = 0

  list.each do |n|
    if n % 2 == 0
      evens += 1
    end
  end

  return evens
end

def sum67(list)
  sum = 0
  add = true

  list.each do |n|
    if n == 6
      add = false
    elsif n == 7 && !add
      add = true
    elsif add
      sum += n
    end
  end

  return(sum)
end

def left2(str)
  if str.length == 2
    return str
  else
    return str[2..-1] + str[0..1]
  end
end

def last_two(str)
  if str.length == 2
    str[1] + str[0]
  else
    str[0..-3] + str[-1] + str[-2]
  end
end

def cat_dog?(str)
  cats = 0
  dogs = 0
  a = "cat"
  b = "dog"

  while a != nil
    a = str.delete! "cat"
    cats += 1
  end

  while b != nil
    b = str.delete! "dog"
    dogs += 1
  end

  return cats == dogs
end

def has22?(list)
  two = false

  list.each do |n|
    if n == 2
      if two
        return true
      end
      two = true
    else
      two = false
    end
  end

  false
end

def same_first_last(list)
  return list[0] == list [-1]
end
