require 'docking_station'

RSpec.describe DockingStation do

  bike = Bike.new

  it {is_expected.to respond_to(:bikes)}

  describe '#release_bike' do

    it {is_expected.to respond_to(:release_bike)}

    it 'releases a bike' do
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises error when there are no bikes available' do
      expect {subject.release_bike}.to raise_error("There are no bikes!")
    end

  end

  describe '#dock' do

    it {is_expected.to respond_to(:dock).with(1).argument}

    it 'docks a bike' do
      expect(subject.dock(bike)).to eq [bike]
    end

    it 'raises error when the station is full' do
      DockingStation::DEFAULT_CAPACITY.times { subject.dock(bike) }
      expect {subject.dock(bike)}.to raise_error("There are no more spaces left!")
    end

  end

end
