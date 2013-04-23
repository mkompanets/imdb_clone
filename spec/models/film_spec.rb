require 'spec_helper'

describe Film do
  before(:each) do
    @film = FactoryGirl.build(:film)
  end
  it { should have_many(:actors) }
  it { should have_many(:writers) }
  it { should have_many(:producers) }
  it { should have_many(:directors) }
  it { should validate_presence_of :title }
  it "should be valid" do
    @film.should be_valid
  end
end
