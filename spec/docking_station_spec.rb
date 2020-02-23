require "docking_station"
require "bike"
describe DockingStation do


  it { is_expected.to(respond_to(:release_bike)) }
  it { is_expected.to(respond_to(:dock)) }
# I want the docking station to let me know if there are bikes available
  it { is_expected.to(respond_to(:capacity)) }
# I want to have a bike from the docking station
  it { expect(subject).to(have_attributes(bikes: [])) }
# I want to dock my bike at the docking station so I can return bikes I have hired
  it { is_expected.to(respond_to(:dock).with(1).argument) }

  describe '#release_bike' do
     it 'raises an error when no bikes available' do
       expect { subject.release_bike }.to raise_error 'No bikes to release'
     end
     it "releases working bikes?" do
       subject.dock(Bike.new)
       bike = subject.release_bike
       expect(bike).to be_working
     end
   end
   describe '#dock' do
     it 'raises an error when full' do
       subject.capacity.times { subject.dock(Bike.new) }
       expect { subject.dock(Bike.new) }.to(raise_exception('Dock is full'))
     end
   end
end
