require 'van'

describe Van do
  
  let(:van) {Van.new}
  let(:station) {double :station}
  let(:garage) {double :garage}
  let(:broken_bike) {double :broken_bike, broken?: true}
  let(:working_bike) {double :working_bike, broken?: false}


  it "should be able to load broken bikes from the station" do
    expect(station).to receive(:release_broken_bikes).and_return([broken_bike])
    van.load_broken_bikes_from(station)
    expect(van.bike_rack).to eq([broken_bike])
  end

  it "should be able to unload broken bikes at the garage" do
    van.dock(broken_bike)
    expect(garage).to receive(:accept)
    van.unload_broken_bikes_at_the(garage)   
  end

end