class Parcel
  def initialize(length, width, height, weight, title)
    @length = length
    @width = width
    @height = height
    @weight = weight
    @title = title
  end

  def title
    @title
  end

  def volume
    @length * @width * @height
  end

  def cost_to_ship
    "-G-#{@length * @width * @height * @weight * 10} guilders"
  end
end


