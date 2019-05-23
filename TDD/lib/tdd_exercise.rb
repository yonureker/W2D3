
class Array
  def my_uniq
    my_array = []
    self.each do |el|
      my_array.push(el) unless my_array.include?(el)
    end
    my_array
  end

  def two_sum
    if self.any? {|el| !el.is_a?(Integer)}
      raise "Enter an array of integers"
    end

    new_arr = []
    (0...self.length).each do |idx1|
      (idx1+1...self.length).each do |idx2|
        new_arr << [idx1,idx2] if (self[idx1] + self[idx2] == 0) && idx2 > idx1
      end
    end
    new_arr
  end

  def my_transpose
    my_array = []

    self.each_with_index do |row, i1|
      sub_array = []
      row.each_with_index do |el, i2|
        sub_array << self[i2][i1]
      end
      my_array << sub_array
    end
    my_array
  end

  def stock_picker
    max_profit = 0
    days = []
    self.each_with_index do |el1,idx1|
      self.each_with_index do |el2,idx2|
        if (self[idx2]-self[idx1]) > max_profit && (idx2 > idx1)
          max_profit = self[idx2]-self[idx1] 
          days = [idx1,idx2] 
        end
      end
    end
    days
  end

end