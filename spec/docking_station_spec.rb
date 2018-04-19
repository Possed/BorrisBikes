require 'docking_station'
describe DockingStation do

  it "had a default capacity" do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  describe '#release_bike' do
    it "raises an error when there is no bike available" do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#dock_bike' do
    it "raises an error when docking station is full" do
      subject.capacity.times { subject.dock_bike Bike.new}
      expect { subject.dock_bike Bike.new }.to raise_error 'Docking station full'
    end
  end

  #
  # bike = Bike.new
  # it "responds to release_bike" do
  #   expect(station).to respond_to(:release_bike)
  # end
  #
  # it "gets a bike when asked to release bike" do
  #   expect(station.release_bike).to be_instance_of(Bike)
  # end
  #
  # it "responds to dock a bike" do
  #   expect(station).to respond_to(:dock_bike)
  # end
  #
  # it "docks a bike when asked to dock a bike" do
  #   bike = Bike.new
  #   station.dock_bike(bike)
  #   expect(station).to have_attributes(:bike => bike)
  # end
  #
  # it "returns bike instance if bike has been docked" do
  #   bike = Bike.new
  #   station.dock_bike(bike)
  #   expect(station.bike).to eq(bike)
  # end


end
