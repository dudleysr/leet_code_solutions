# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
    # Returns string untouched if there's only one row
    return s if num_rows <= 1

    y = 0 # No need for an x value since all the rows get joined eventually
    down = true # Simulates the direction we are traversing our matrix
    arr = s.chars
    result = []
    num_rows.times {|n| result.push([])} # Makes a multidimensional array
    arr.each do |n|
        result[y].push(n)

        # Essentially, moves down the multidimensional array until you hit the last row.
        # Then moves back up. Would be more complicated if we needed to track the 'empty'
        # spots in the array but since we're running a join on each row later, there's no need

        if down
            if y < num_rows - 1
                y += 1
            else
                y -= 1
                down = false
            end
        else
            if y == 0
                down = true
                y += 1
            else
                y -= 1
            end
        end
    end
    return combine_matrix(result)
end

# Formats each row into a single string
def combine_matrix(matrix)
    result = ""
    matrix.each do |row|
       result += row.join("") 
    end
    result
end