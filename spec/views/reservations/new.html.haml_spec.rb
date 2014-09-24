require 'spec_helper'

describe "reserervations/new" do
  before(:each) do
    assign(:reserervation, stub_model(Reservation).as_new_record)
  end

  it "renders new reserervation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", reserervations_path, "post" do
    end
  end
end
