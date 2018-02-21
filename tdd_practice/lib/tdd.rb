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

  def stock_picker(prices)
    highest_pair = []

    (0...prices.length - 1).each do |idx1|
      buy_price = prices[idx1]

      (idx1+1...prices.length).each do |idx2|
        sell_price = prices[idx2]

        next if buy_price >= sell_price

        current_profit = sell_price - buy_price

        if highest_pair.empty?
          highest_pair = [idx1, idx2]
        else
          highest_profit = prices[highest_pair[1]] -
                            prices[highest_pair[0]]
          if current_profit > highest_profit
            highest_pair = [idx1, idx2]
          end
        end
      end
    end

    highest_pair
  end
end




# [
#     1, 2, 3, 4, 5, 4, 3, 2, 5, 6, 7, 1, 8
# ]
