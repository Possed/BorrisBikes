require 'docking_station'
require './lib/bike'
describe DockingStation do
  station = DockingStation.new
  bike = Bike.new
  it "responds to release_bike" do
    expect(station).to respond_to(:release_bike)
  end

  it "gets a bike when asked to release bike" do
    expect(station.release_bike).to be_instance_of(Bike)
  end

  it "responds to dock a bike" do
    expect(station).to respond_to(:dock_bike)
  end

  it "docks a bike when asked to dock a bike" do
    station.dock_bike(bike)
    expect(station).to have_attributes(:bike => bike)
  end

  it "returns bike instance if bike has been docked" do
    station.dock_bike(bike)
    expect(station.bike).to eq(bike)
  end

  describe '#release_bike' do
    it "raises an error when release bike after bike has already been released" do
      expect{ station.release_bike }.to raise_error 'No bikes available'
    end
  end

end
