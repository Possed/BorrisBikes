require 'docking_station'
require './lib/bike'
describe DockingStation do
  station = DockingStation.new

  it "responds to release_bike" do
    expect(station).to respond_to(:release_bike)
  end

  it "gets a bike when asked to release bike" do
    expect(station.release_bike).to be_instance_of(Bike)
  end

end
