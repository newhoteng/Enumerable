module MyEnumerable
  def all?
    value = true
    each do |element|
      value = false if yield(element) == false
    end
    value
  end

  def any?
    value = false
    each do |element|
      value = true if yield(element) == true
    end
    value
  end

  def filter
    result = []
    each do |element|
      result << element if yield(element) == true
    end
    result
  end
end
