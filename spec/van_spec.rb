require 'van'

describe Van do
  
  let(:van) {Van.new}
  let(:station) {double :station}
  let(:garage) {double :garage}


  it "should know where it is located" do
    expect(van.location).to eq("garage")
  end

  it "should start out at the garage" do
    expect(van.location).to eq("garage")
  end

  it 'should be able to travel to garage' do
    van.travel_to("garage")
    expect(van.location).to eq("garage")
  end

  it "should be able to travel to the docking station" do
    expect(van.location).to eq("garage")
    van.travel_to(station)
    expect(van.location).to eq(station)
  end

end