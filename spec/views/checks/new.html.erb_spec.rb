require 'spec_helper'

describe "checks/new" do
  before(:each) do
    assign(:check, stub_model(Check,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new check form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", checks_path, "post" do
      assert_select "input#check_name[name=?]", "check[name]"
    end
  end
end
