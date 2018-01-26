class Bike

  attr_reader :working
  
  def initialize
    @working = true
  end

  def report(bike)
    @working = false
  end
end
