require 'docking_station'

# In spec/docking_station_spec.rb
describe DockingStation do

 describe "releases bike" do

  it 'responds to #release_bike'  do  #=>method
  	#creating an instance of DockingStation
  	station = DockingStation.new
   	expect(station).to respond_to(:release_bike) #=> is : necessary to respresent method??
  end

  it 'releases a bike that responds to #working ' do
  	bike = Bike.new
  	expect(bike.working?).to eq(true)
  end
 end

 describe "the #dock method" do

   it 'responds to #dock' do
  	station = DockingStation.new
    expect(station).to respond_to(:dock) #.with(1).argument
   end

   it "responds to #bike" do
  	station = DockingStation.new
  	expect(station).to respond_to(:bike)
   end

   it 'docks something' do
  	bike = Bike.new
  	#station = DockingStation.new
  	expect(DockingStation.new.dock(bike)).to eq(bike)
   end

  it "only releases a bike when there are bikes" do
   station = DockingStation.new
   bike = Bike.new
  expect {station.release_bike}.to raise_error("no bikes avaliable")

  end

   it "tell us that the dock is full and responds to the #dock" do
    station = DockingStation.new
    bike  = Bike.new
    station.dock(bike)
   expect {station.dock(bike)}.to raise_error("dock is full")
   end

   it 'returns docked bikes' do
  	bike = Bike.new
  	subject.dock(bike)
  	#subject => calls on the instance of the DockingStation class (DockingStation.new) BUT does not create one as with
    #docking_station = DockingStation.new
  	expect(subject.bike).to eq bike
   end
 end

end


# it 'raises and error '
#  #  it 'it docks a bike' do
#  #  station = DockingStation.new("bike")
#
#  #  #expect(station.dock).to eq(@bike)
#  # end
# end
