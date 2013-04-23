require 'spec_helper'

describe "films/new" do
  before(:each) do
    assign(:film, stub_model(Film).as_new_record)
  end

  xit "renders new film form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => films_path, :method => "post" do
    end
  end
end
