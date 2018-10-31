require 'docking_station'
describe DockingStation do
	it { is_expected.to respond_to :release_bike}
	# it 'respond to release bike' do
	# 	expect(subject).to respond_to :release_bike
	# end
	it 'releases working bikes' do
		bike = subject.release_bike
		expect(bike).to be_working
	end

	it { is_expected.to respond_to(:dock).with(1).argument }
end