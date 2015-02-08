require 'station'

describe Station do

  let(:broken_bike) {double :broken_bike, broken?: true}
  let(:working_bike) {double :working_bike, broken?: false}
  let(:station) {Station.new}
  let(:large_station) {Station.new(:capacity => 20)}
  let(:van) {double :van}

  it "should be able to be created with a different capacity" do
    expect(large_station.capacity).to eq(20)
  end

  it "should release broken bikes when visited by a van" do
    station.dock(broken_bike)
    station.dock(working_bike)
    station.release_broken_bikes
    expect(station.bike_rack).to eq([working_bike])
  end
  
end