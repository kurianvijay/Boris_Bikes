require 'docking_station'

# In spec/docking_station_spec.rb
describe DockingStation do


  it 'responds to #release_bike'  do  #=>method
  	#creating an instance of DockingStation
  	station = DockingStation.new
   	expect(station).to respond_to(:release_bike) #=> is : necessary to respresent method??
  end

  it 'gets a working bike' do
  	bike = Bike.new
  	expect(bike.working?).to eq(true)
  end
end
