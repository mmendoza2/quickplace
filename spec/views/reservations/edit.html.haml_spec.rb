require 'spec_helper'

describe "reserervations/edit" do
  before(:each) do
    @reserervation = assign(:reserervation, stub_model(Reservation))
  end

  it "renders the edit reserervation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", reserervation_path(@reserervation), "post" do
    end
  end
end
