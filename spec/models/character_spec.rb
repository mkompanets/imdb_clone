require 'spec_helper'

describe Character do
  before(:each) do
    @character = FactoryGirl.build(:character)
  end
  it { should belong_to(:film) }
  it { should belong_to(:actor) }
  it { should validate_presence_of :name }
  it "should be valid" do
    @character.should be_valid
  end
end
