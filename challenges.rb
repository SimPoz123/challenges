def everywhere?(list, value)
  pair = 0

  list.each do |n|
    if n == value
      pair = 1
    elsif pair = 1
      pair = 0
    else
      return false
    end
  end

  true
end
