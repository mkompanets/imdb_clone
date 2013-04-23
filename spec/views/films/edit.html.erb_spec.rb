require 'spec_helper'

describe "films/edit" do
  before(:each) do
    @film = assign(:film, stub_model(Film))
  end

  xit "renders the edit film form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => films_path(@film), :method => "post" do
    end
  end
end
