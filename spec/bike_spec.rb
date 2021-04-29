require 'bike' # lowercase here because calling filename
describe Bike do
  it 'responds to #working?' do 
    expect(Bike.new).to respond_to(:working?)
  end

  describe '#working?' do
    context 'when bike is not broken' do
      it 'returns true' do
        bike = Bike.new
        expect(bike.working?).to be_truthy
      end
    end

    context 'when bike is broken' do
      it 'returns false' do
        bike = Bike.new
        bike.report_broken
        expect(bike.working?).to be_falsy
      end
    end
  end

  describe '#report_broken' do
    it 'sets @broken to true' do
      bike = Bike.new
      bike.report_broken
      expect(bike.broken).to be_truthy
    end
  end
end
