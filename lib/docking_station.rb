class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def dock(bike)
    fail "There are no more spaces left!" if @bikes.count >= 20
    @bikes << bike
  end

  def release_bike
    fail "There are no bikes!" if @bikes.empty?
    @bikes.pop
  end

end
