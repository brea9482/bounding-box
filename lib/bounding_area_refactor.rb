class BoundingArea
  attr_reader :bounding_boxes

  def initialize(bounding_boxes)
    @bounding_boxes = bounding_boxes
  end

  def contains_point?(point_x, point_y)
    @bounding_boxes.any? { |box| box.contains_point?(point_x, point_y) }
  end
end
