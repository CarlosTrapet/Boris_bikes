require_relative 'bike'

class DockingStation

def initialize
 @bikes = []
end

  attr_reader :bikes


  #same as
  # def bike=(value)
  # @age = value
  #end

  # def show
  #   puts @bike #(.working?)
  #   puts @quantity
  # end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes.pop
    return @bikes
  end

  def dock(bike)
    fail 'Capacity full' if @bikes.count >= 20
    @bikes << bike
  end
end


