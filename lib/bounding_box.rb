class BoundingBox
  attr_reader :x, :y, :width, :height, :left, :right, :top, :bottom

  def initialize(x, y, width, height)
    @x = x
    @y = y
    @width = width
    @height = height
    @left = x
    @right = x + width
    @top = y + height
    @bottom = y
  end

  def contains_point?(point_x, point_y)
    point_x <= right &&
    point_x >= left &&
    point_y <= top &&
    point_y >= bottom
  end
end
