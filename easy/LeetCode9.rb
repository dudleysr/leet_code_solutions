# @param {Integer} x
# @return {Boolean}

# This implementation is not very efficient and the runtime is poor.
# Next implementation will likely involve using divmod
def is_palindrome(x)
    result = x.to_s.split("")
    
    left = 0
    right = result.length - 1
    return true if left == right
    while left < right
        if result[left] == result[right]
            left += 1
            right -= 1
        else
            return false
        end
    end
    return true
end