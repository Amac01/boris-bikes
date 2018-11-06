require_relative 'bike'

class DockingStation
  def initialize
     @bike = []
  end

  attr_reader :bike_rack
  def release_bike
    #Bike.new
    fail 'no bikes to release' if @bike.empty?
    @bike.pop
  end
  def dock(bike)
   fail 'Docking station full capacity' if full?
   @bike << bike
  end
  def bike
    @bike
  end

  private
  def full?
    @bike.count >= 20
  end
  def empty?
    @bike.empty
  end
end
