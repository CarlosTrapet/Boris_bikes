require_relative 'bike'

class DockingStation

  attr_reader :capacity, :bikes

  DEFAULT_CAPACITY = 20

def initialize(capacity = DEFAULT_CAPACITY)
 @bikes = []
 @capacity = capacity
end

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

