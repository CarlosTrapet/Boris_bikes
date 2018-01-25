require_relative 'bike'

class DockingStation

attr_accessor :capacity

def initialize(capacity = 20)
 @bikes = []
 @capacity = capacity
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
    fail 'No bikes available' if empty?
    @bikes.pop
    return @bikes
  end

  def dock(bike)
    fail 'Capacity full' if full?
    @bikes << bike
  end

private

  def full?
    @bikes.count >= @capacity
    end

  def empty?
    @bikes.empty?
  end  


end

