require 'bike' # lowercase here because calling filename
describe Bike do
  describe 'responds to #working?' do # hashtag convention to say: this is an instance of a class
    subject { Bike.new }
    it { is_expected.to respond_to(:working?) }
  end
end