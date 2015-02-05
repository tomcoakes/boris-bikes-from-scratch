require 'bike'

describe Bike do
  
  let(:bike) {Bike.new}
  let(:broken_bike) {Bike.new.break}

  it "should be able to work when new" do
    expect(bike).not_to be_broken
  end

  it "should be able to break" do
    bike.break
    expect(bike).to be_broken
  end

  it "should be able to be fixed" do
    broken_bike.fix
    expect(broken_bike).not_to be_broken
  end

end