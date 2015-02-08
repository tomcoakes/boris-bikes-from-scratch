require 'van'

describe Van do
  
  let(:van) {Van.new}
  let(:station) {double :station}
  let(:garage) {double :garage}
  let(:broken_bike) {double :broken_bike, broken?: true}
  let(:working_bike) {double :working_bike, broken?: false}


  it "should be able to load broken bikes from the station" do
    expect(van.bike_rack).to eq([])
    expect(station).to receive(:release_broken_bikes).and_return([broken_bike])
    van.load_broken_bikes(station)
    expect(van.bike_rack).to eq([broken_bike])
  end

end