require_relative 'bike'

class DockingStation
  @bikes = []
  attr_reader :bikes
  def dock(bike)
    @bikes << bike
  end

  def release_bike
    Bike.new
  end
end
