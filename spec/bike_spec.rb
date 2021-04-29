require 'bike' # lowercase here because calling filename
describe Bike do
  it 'responds to #working?' do 
    expect(Bike.new).to respond_to(:working?)
  end

  describe '#report_broken' do
    it 'sets @broken to true' do
      bike = Bike.new
      bike.report_broken
      expect(bike.broken).to be_truthy
    end
  end
end
