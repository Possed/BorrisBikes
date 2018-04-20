require 'docking_station'
describe DockingStation do

  it "had a default capacity" do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  describe '#release_bike' do
    it "responds to release_bike" do
      expect(subject).to respond_to(:release_bike)
    end

    it "raises an error when there is no bike available" do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#dock_bike' do
    it "responds to dock a bike" do
      expect(subject).to respond_to(:dock_bike)
    end

    it "raises an error when docking station is full" do
      subject.capacity.times { subject.dock_bike Bike.new}
      expect { subject.dock_bike Bike.new }.to raise_error 'Docking station full'
    end
  end





  # it "gets a bike when asked to release bike" do
  #   expect(subject.release_bike).to Bike.new
  # end
  #
  # it "docks a bike when asked to dock a bike" do
  #   station.dock_bike(Bike.new)
  #   expect(subject).to have_attributes(:bike => Bike.new)
  # end
  #
  #
  # it "returns bike instance if bike has been docked" do
  #   station.dock_bike(Bike.new)
  #   expect(station).to eq(Bike.new)
  # end


end
