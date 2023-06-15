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
  
end
