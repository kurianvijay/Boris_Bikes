require 'docking_station'

# In spec/docking_station_spec.rb
describe DockingStation do
  it release_ bike do
   expect(DockingStation).to respond_to(release_bike)
  end
end
