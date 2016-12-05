# @param {String} s
# @return {Boolean}
def is_valid(s)
  return false if s.length < 2
  stack = []

  s.each_char do |ch|
    case ch
    when '(', '{', '['
      stack.push(ch)
    when ')'
      return false if stack.pop != '('
    when '}'
      return false if stack.pop != '{'
    when ']'
      return false if stack.pop != '['
    else
      nil
    end
  end

  return true
end