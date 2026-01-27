class Array
  def avg
    each do |element|
      return "Array must contain only numbers" if !element.is_a?(Numeric)
    end
    return nil if empty?
    sum.to_f / size
  end
end

puts [1,3].avg