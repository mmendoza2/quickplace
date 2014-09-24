require 'spec_helper'

describe "reserervations/show" do
  before(:each) do
    @reserervation = assign(:reserervation, stub_model(Reservation))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
