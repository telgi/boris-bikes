require 'bike'

RSpec.describe Bike do

  describe 'when called' do
    it {is_expected.to respond_to(:working?)}
  end

  describe '#report' do
    it {is_expected.to respond_to(:report)}

    it 'returns a message when reported' do
      expect(subject.report).to eq "Bike is broken"
    end
  end

end
