require 'docking_station.rb'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}

  it "#release_bike will get a new instance of bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
    expect(bike).to be_working
  end
  # it "dock stores a bike" do
  #   bike = Bike.new
  #   subject.dock(bike)
  #   expect(subject.bike).to eq bike
  # end
  it "check whether bike method exists" do
    expect(subject).to respond_to(:bike)
  end
  it "raises an error when there are no bikes to release" do
    expect{subject.release_bike}.to raise_error 'no bikes to release'
  end
    # it "raises an error when there is a bike already in the dock" do
    #   subject.dock(Bike.new)
    #   expect {subject.dock Bike.new}.to raise_error 'no capacity'
    # end
    it "raises an error when in full capacity" do
      20.times { subject.dock Bike.new }
      expect {subject.dock Bike.new }.to raise_error 'Docking station full capacity'
    end
    it "docking station to have a default capacity of 20 bikes" do

    end

end
