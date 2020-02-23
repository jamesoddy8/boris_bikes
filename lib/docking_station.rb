require_relative 'bike'

class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def capacity
    20
  end

  def dock(bike)
    raise 'Dock is full' if @bikes.count == capacity
    @bikes << bike
  end

  def release_bike
    raise 'No bikes to release' unless @bikes.any?
    Bike.new
  end
end
