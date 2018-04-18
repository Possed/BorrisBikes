require 'bike'

describe Bike do
bike = Bike.new
it "responds to is working" do
  expect(bike).to respond_to(:is_working?)
end

end
