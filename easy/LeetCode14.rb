# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
	# Escape logic if it's an empty array or only one element
	return "" if strs.length == 0
	return strs[0] if strs.length == 1

	# Sort by length to get shortest string
	# strs.sort_by! { |str| str.length }
	result = ""
	# Iterate over each character of shortest string
	strs[0].each_char.with_index do |char, n|
		# Iterate over all other words in the array
		strs[1..strs.length-1].each do |str|
			# Return current common prefix if one of the words character doesn't match
			if str[n] != char
				return result
			end
		end
		# Add character to the common prefix if all the words have the same character at this spot
		result += char
	end
	# If we make it here, entire shortest word is the common prefix.
	result
end