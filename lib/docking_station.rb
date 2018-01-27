class DockingStation

  DEFAULT_CAPACITY = 20
  attr_accessor :capacity
  attr_reader :bikes

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def dock(bike)
    fail "There are no more spaces left!" if full?
    bikes << bike
  end

  def release_bike
    fail "There are no bikes!" if empty?
    @bikes.each do |bike|
      if bike.working == true
        @bikes.delete_at(@bikes.find_index(bike))
        return bike # remove wthout return
      end
    end
    raise "No working bikes available"
  end

  private



  def full?
    bikes.count >= capacity
  end

  def empty?
    bikes.empty?
  end

end
