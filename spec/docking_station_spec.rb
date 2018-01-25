require 'docking_station'
require 'bike'
# # With RSpec, we are always describing the behavior of classes,
# # modules and their methods. The describe block is always used at the top to
# # put specs in a context. It can accept either a class name, in which case the
# # class needs to exist, or any string you'd like.

describe DockingStation do # syntax for testing class instance - accepts class name
  it { is_expected.to respond_to :release_bike}
  it 'releases working bikes' do
     bike = Bike.new
    expect(bike).to be_working 
    # to check working returns false, use not_to eg. 
    # expect(bike).not_to be_working 
  end

  it {is_expected.to respond_to(:dock).with(1).argument}
  it {is_expected.to respond_to(:bikes)}

  describe '#release_bike' do 
    it 'releases a bike' do 
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to match_array([])
    end
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do 
    # it {is_expected.to respond_to(:dock).with(1).argument}

    # expect(subject.dock(bike)).to eq bike
 
    it 'raises an error when the docking station is full' do 
      subject.capacity.times {subject.dock(Bike.new)} 
      expect {subject.dock(Bike.new)}.to raise_error 'Capacity full'
    end
  end

  it 'has a default capacity' do
    expect(subject.capacity).to(equal(20))

    # careful with spacing!!! // expect (subject.capacity).to eq 20 // does not work!!!
    #(subject.capacity).should eq (20)   ==> is apparently deprecated
  end

  describe 'initialization' do
    
    it 'allows to set customised capacity' do 
      station = DockingStation.new(50)
      expect(station.capacity).to(eq(50))
      # expect(subject.capacity = (50)).to(eq(50))
    end

    it 'raises an error when customised capacity is reached' do
      station = DockingStation.new(50)
      subject.capacity.times {subject.dock(Bike.new)}
      expect{subject.dock(Bike.new)}.to raise_error 'Capacity full'
    end

  end



end


# # be_XXX where XXX is name of method, responds to method call. eg. be_crying responds to crying? (true or false)
# # the test will pass if the method returns true

# # subject in line 11 is basically self. So we call method release_bike on class DockingStation.
# # this method - when called - returns new instance of class Bike.
# # we call it bike :P
