class BoundingArea
  attr_reader :bounding_boxes

  def initialize(bounding_boxes)
    @bounding_boxes = bounding_boxes
  end

  def contains_point?(point_x, point_y)
    contains_point = []

    if @bounding_boxes.empty?
      return false
    else
      @bounding_boxes.each do |box|
        if point_x <= box.right &&
          point_x >= box.left &&
          point_y <= box.top &&
          point_y >= box.bottom

          contains_point << true
        else
          contains_point << false
        end
      end
    end
    contains_point.include?(true)
  end
end
