require 'spec_helper'

describe "checks/index" do
  before(:each) do
    assign(:checks, [
      stub_model(Check,
        :name => "Name"
      ),
      stub_model(Check,
        :name => "Name"
      )
    ])
  end

  it "renders a list of checks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
