require "docking_station"
describe DockingStation do
  it { is_expected.to(respond_to(:release_bike)) }
  it { is_expected.to(respond_to(:dock)) }
  it { expect(subject).to(have_attributes(bikes: nil)) }
  it { is_expected.to(respond_to(:dock).with(1).argument) }
  it { expect {subject.release_bike}.to raise_exception(StandardError) }
  describe DockingStation.new.release_bike do
    it "gives a bike that" do
      is_expected.to(respond_to(:working?))
    end
  end
end
