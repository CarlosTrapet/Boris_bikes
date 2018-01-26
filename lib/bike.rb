class Bike

  attr_reader :state

  def initialize(state = "not_broken")
    @state = state
  end

  def working?
    if @state == "broken"
      false
    else
      true
    end
  end
end
