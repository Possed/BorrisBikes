require './lib/bike'
class DockingStation
  attr_reader :capacity
  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
    @capacity = DEFAULT_CAPACITY
  end

  def release_bike
    fail "No bikes available" if empty?
    bikes.pop
  end

  def dock_bike(bike)
    fail "Docking station full" if full?
    bikes << bike
  end

  private
  attr_reader :bikes
  def full?
    bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    bikes.empty?
  end
end
