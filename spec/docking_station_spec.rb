require 'docking_station'

RSpec.describe DockingStation do

  let(:bike) { Bike.new }

  describe '#release_bike' do

    it {is_expected.to respond_to(:release_bike)}

    # it 'releases a bike' do
    #   subject.dock(bike)
    #   expect(subject.release_bike).to eq bike
    # end

    it 'raises error when there are no bikes available' do
      expect {subject.release_bike}.to raise_error("There are no bikes!")
    end

    it 'doesn\'t release broken bikes' do
      bike.report(bike)
      subject.dock(bike)
      expect {subject.release_bike}.to raise_error("No working bikes available")
    end

  end

  describe '#dock' do

    it {is_expected.to respond_to(:dock).with(1).argument}

    it 'docks a bike' do
      expect(subject.dock(bike)).to eq [bike]
    end

    it 'raises error when the station is full' do
      subject.capacity.times { subject.dock(bike) }
      expect {subject.dock(bike)}.to raise_error("There are no more spaces left!")
    end

  end

end
