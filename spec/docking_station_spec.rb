require "docking_station"
describe DockingStation do
  it { is_expected.to(respond_to(:release_bike)) }
  describe DockingStation.new.release_bike do
    it "gives a bike that" do is_expected.to(respond_to(:working?))
    end
  end
end
