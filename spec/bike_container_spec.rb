require 'bike_container'

class ObjectHolder
  include BikeContainer

  def initialize
    @bike_rack = []
  end

end


describe BikeContainer do

  let(:holder) {ObjectHolder.new}
  let(:bike) {double :bike}

  it "should be created with a bike rack" do
    expect(holder.bike_rack).to eq([])
  end

  it "should be able to dock bikes into the bike rack" do
    expect(holder.bike_rack).to eq([])
    holder.dock(bike)
    expect(holder.bike_rack).to eq([bike])
  end

  it "should be able to release bikes from the bike rack" do
    holder.dock(bike)
    expect(holder.bike_rack).to eq([bike])
    holder.release(bike)
    expect(holder.bike_rack).to eq([])
  end
  
  it "should be able to count the number of bikes in the bike rack" do
    holder.dock(bike)
    expect(holder.bike_count).to eq(1)
    holder.dock(bike)
    expect(holder.bike_count).to eq(2)
  end

  it "should have a default capacity of 10 bikes" do
    expect(holder.capacity).to eq(10)
  end
  
end