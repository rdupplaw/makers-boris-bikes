class Bike
  attr_reader :broken

  def working?
    !broken
  end

  def report_broken
    @broken = true
  end
end
