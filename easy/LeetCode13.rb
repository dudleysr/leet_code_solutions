# @param {String} s
# @return {Integer}
def roman_to_int(s)
  arr = s.split("").map { |e| digit_convert(e) }
  n = arr.length - 1
  while n >= 1
    if arr[n-1] < arr[n]
      combined = arr[n] - arr[n-1]
      arr.delete_at(n)
      arr.delete_at(n-1)
      arr.push(combined)
      n -= 2
    else
      n -= 1
    end
  end
  arr.inject(:+)
end

def digit_convert(n)
  case n
    when "I"
      1
    when "V"
      5
    when "X"
      10
    when "L"
      50
    when "C"
      100
    when "D"
      500
    when "M"
      1000
    else
      0
  end
end