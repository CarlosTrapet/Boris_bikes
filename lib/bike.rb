class Bike

  # attr_reader :state

  # def initialize(state = "not_broken")
  #   @state = state
  # end

  # def working?
  #   if @state == "broken"
  #     false
  #   else
  #     true
  #   end
  # end

  # Walkthrough has a different approach; creating a method
  # to report the bike as broken (eg. bike.report_broken)
def report_broken
  @broken = true
end

  def broken?
    @broken
  end

  def working?
    if self.broken?
      false
    else
      true
    end
  end
end
