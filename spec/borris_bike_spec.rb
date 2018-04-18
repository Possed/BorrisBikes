require 'borris_bike'
describe DockingStation do
  station = DockingStation.new
  it "responds to release_bike" do
    expect(station).to respond_to(:release_bike)
  end
end
