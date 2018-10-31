require './lib/bike'
class DockingStation
attr_reader :bike
	def release_bike
		raise 'No bike available' if @bike == 0
		@bike
	end

	def dock(bike)
		fail 'Docking station full' if @bike
		@bike = bike
	end
end