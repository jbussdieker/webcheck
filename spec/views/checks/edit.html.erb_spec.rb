require 'spec_helper'

describe "checks/edit" do
  before(:each) do
    @check = assign(:check, stub_model(Check,
      :name => "MyString"
    ))
  end

  it "renders the edit check form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", check_path(@check), "post" do
      assert_select "input#check_name[name=?]", "check[name]"
    end
  end
end
