require 'bike'

describe Bike do
  it {is_expected.to respond_to :working?}
  it 'responds to working? correctly' do 
    bike = Bike.new("broken")
    expect(bike.working?).to eq false
  end

end
