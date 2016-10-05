# @param {Integer} x
# @return {Integer}
def reverse(x)
    arr = x.to_s.split("").reverse
    if arr[-1] == "-"
        arr.pop
        arr.unshift("-")
    end
    result = arr.join("").to_i
    # Checks for MAX or MIN Int issues
    if result >= 2147483647 || result <= -2147483647
        return 0
    end
    result
end