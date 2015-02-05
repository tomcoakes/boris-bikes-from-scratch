require 'station'

describe Station do

  let(:bike) {double :bike}
  let(:station) {Station.new}
  let(:large_station) {Station.new(:capacity => 20)}

  it "should be able to be created with a different capacity" do
    expect(large_station.capacity).to eq(20)
  end
  
end