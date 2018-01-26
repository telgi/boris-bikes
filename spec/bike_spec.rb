require 'bike'

RSpec.describe Bike do

  let(:bike) { Bike.new }

  describe 'when called' do
    it {is_expected.to respond_to(:working)}
  end

  describe '#initialize' do
    it 'stores a working variable which is true by default' do
      bike.report(bike)
      expect(bike.working).to eq false
    end
  end

  describe '#report' do
    it {is_expected.to respond_to(:report).with(1).argument}

    it 'returns a message when reported' do
      expect(subject.report(bike)).to eq false
    end
  end

end
