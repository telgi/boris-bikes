require 'docking_station'

RSpec.describe DockingStation do
    it {is_expected.to respond_to(:release_bike)}
end
