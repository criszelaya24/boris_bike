require 'docking_station'
describe DockingStation do
	it { is_expected.to respond_to(:release_bike)}
	it { is_expected.to respond_to(:dock).with(1).argument }
	it { is_expected.to respond_to(:bike) }

	it 'returns docked bikes' do
		bike = Bike.new
		expect(subject.dock(bike)).to eq bike
	end

	describe '#release_bike' do
		it 'Raises an error when asked to release bike when bike docking is empty' do
			expect { subject.release_bike }.to raise_error 'No bikes available'
		end
	end

	describe '#dock' do
		it 'raises an error when full' do
			subject.dock(Bike.new)
			expect { subject.dock Bike.new }.to raise_error 'Docking station full'
		end
	end
end