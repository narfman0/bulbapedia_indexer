class Pokemon
  def initialize(number=nil, name=nil, height=nil, weight=nil)
    @number = number
    @name = name
    @height = height
    @weight = weight
  end

  def height
    @height
  end

  def set_height(height)
    @height = height
  end

  def weight
    @weight
  end

  def set_weight(weight)
    @weight = weight
  end

  def name
    @name
  end

  def set_name(name)
    @name = name
  end

  def number
    @number
  end
end
