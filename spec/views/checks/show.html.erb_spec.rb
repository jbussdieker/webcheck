require 'spec_helper'

describe "checks/show" do
  before(:each) do
    @check = assign(:check, stub_model(Check,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
