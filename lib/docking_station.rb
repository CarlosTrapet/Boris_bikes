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
    new_bikes = @bikes
    @bikes.each_with_index do |value, index|
      if value.working? # broken? == false
        new_bikes = @bikes.pop(index)
        break
      end
    end
    raise 'No working bikes available' if new_bikes == @bikes
    return new_bikes
  end

  # try looping through elements of array with a counter
  # break at counter >= array.count









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

