require 'bike'

describe Bike do
  it {is_expected.to respond_to :working?}
  # it 'responds to working? correctly' do 
  #   bike = Bike.new("broken")
  #   expect(bike.working?).to eq false
  # end

  # Walkthrough has a different approach; creating a method
  # to report the bike as broken (eg. bike.report_broken)

  it 'can be reported broken' do
    subject.report_broken
    expect(subject).to be_broken
  end
end
