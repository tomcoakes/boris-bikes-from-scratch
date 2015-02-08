require 'garage'

describe Garage do

  let(:garage) {Garage.new}
  let(:broken_bike) {double :broken_bike, broken?: true}
  let(:working_bike) {double :working_bike, broken?: false}

  it "should dock broken bikes from the van" do
    allow(broken_bike).to receive(:fix!)
    garage.accept(broken_bike)
    expect(garage.bike_count).to eq(1)
  end

  it "should fix bikes when accepting them from the van" do
    expect(broken_bike).to receive(:fix!)
    garage.accept(broken_bike)
  end

end