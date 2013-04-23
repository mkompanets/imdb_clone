require 'spec_helper'

describe "films/index" do
  before(:each) do
    assign(:films, [
      stub_model(Film),
      stub_model(Film)
    ])
  end

  xit "renders a list of films" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
