require_relative "bike"

class DockingStation



# def initialize(bike)
# @bike = bike
# end



  def release_bike
    if @bike.nil?
      raise "no bikes avaliable"
    else
      @bike
    end
  end

  def dock(bike)
    fail "dock is full" if @bike
     @bike = bike

  end

# - below is a getter
  # def bike
  # 	@bike
  # end

attr_reader :bike
end
