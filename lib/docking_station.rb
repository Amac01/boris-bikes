require_relative 'bike'

class DockingStation
  attr_reader :bike
  def release_bike
    #Bike.new
    fail 'no bikes to release' unless @bike
    @bike
  end
  def dock(bike)
   @bike = bike
  end
  def bike
    @bike
  end
end
