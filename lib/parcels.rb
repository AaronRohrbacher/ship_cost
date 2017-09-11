class Parcel
  def initialize(length, width, height, weight)
    @length = length
    @width = width
    @height = height
    @weight = weight
  end

  def volume
    @length * @width * @height
  end

  def ship_cost(delivery_time)
    cost = 5

    if self.volume <= 64
      cost += 2
    elsif self.volume < 1728
      cost += 4
    else
      cost += 8
    end

    if delivery_time < 3
      cost += 10
    elsif delivery_time > 7
      cost -= 5
    end

    cost += @weight * 0.5
  end
end
