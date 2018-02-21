class TDD

  def my_uniq(array)
    result = []

    array.each do |el|
      result << el unless result.include? el
    end

    result
  end

  def two_sum(array)
    result = []

    (0...array.length - 1).each do |idx1|
      (idx1 + 1...array.length).each do |idx2|
        result << [idx1, idx2] if array[idx1] + array[idx2] == 0
      end
    end

    result
  end

  def my_transpose(matrix)
    result = []

    matrix.each_index do |idx1|
      sub_arr = []

      matrix[idx1].each_index do |idx2|
        sub_arr << matrix[idx2][idx1]
      end

      result << sub_arr
    end

    result
  end
end




# [
#     1, 2, 3, 4, 5, 4, 3, 2, 5, 6, 7, 1, 8
# ]
