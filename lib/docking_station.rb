require_relative "bike"

class DockingStation

attr_reader :bike

# def initialize(bike)
# @bike = bike
# end



  def release_bike
   Bike.new
  end

  def dock(bike)
  	@bike = bike
  end

# - below is a getter
  # def bike
  # 	@bike
  # end


end

