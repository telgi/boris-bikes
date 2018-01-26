class DockingStation

  DEFAULT_CAPACITY = 20
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def dock(bike)
    fail "There are no more spaces left!" if full?
    @bikes << bike
  end

  def release_bike
    fail "There are no bikes!" if empty?
    @bikes.pop
  end

  private

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end
