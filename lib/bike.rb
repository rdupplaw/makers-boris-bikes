class Bike
  attr_reader :broken

  def working?
  end

  def report_broken
    @broken = true
  end
end
