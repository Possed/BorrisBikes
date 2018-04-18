require './lib/bike'
class DockingStation
  attr_accessor :bike

  def initialize
    @bikes = Array.new(20)
  end

  def release_bike
    raise "No bikes available" unless @bike
    @bike
  end

  def dock_bike(bike)
    @bike = bike
    raise "Docking station full" unless @bike == nil
  end
end
