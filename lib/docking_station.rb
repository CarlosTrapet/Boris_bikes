class DockingStation

 # def initialize(bike, quantity)
 # @bike = bike
 # @quantity = quantity
 # end

 # try initializing it????

  attr_reader :bike

  #same as
  # def bike=(value)
  # @age = value
  #end

  # def show
  #   puts @bike #(.working?)
  #   puts @quantity
  # end

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
    
    fail 'Capacity full' if @bike
    @bike = bike
  end
end


