require 'spec_helper'

describe "films/show" do
  before(:each) do
    @film = assign(:film, stub_model(Film))
  end

  xit "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
