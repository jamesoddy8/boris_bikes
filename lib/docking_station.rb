require_relative 'bike'

class DockingStation
  def initialize
    @bikes = []
  end
  attr_reader :bikes
  def dock(bike)
    @bikes << bike
  end

  def release_bike
    raise "No bikes left" unless @bikes.any?
    Bike.new
  end
end
