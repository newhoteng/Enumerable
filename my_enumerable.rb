module MyEnumerable
  def all?
    value = true
    self.each do |element|
      if yield(element) == false
        value = false
      end
    end
    value
  end
  def any?
    value = false
    self.each do |element|
      if yield(element) == true
        value = true
      end
    end
    value
  end
  
end



