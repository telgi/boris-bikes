class DockingStation

  attr_reader :bike

  def dock(bike)
    fail "There are no more spaces left!" if @bike
    @bike = bike
  end

  def release_bike
    fail "There are no bikes!" unless @bike
    @bike
  end

end
