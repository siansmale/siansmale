require 'spec_helper'

describe "exercises/new" do
  before(:each) do
    assign(:exercise, stub_model(Exercise,
      :name => "",
      :description => "",
      :image => ""
    ).as_new_record)
  end

  it "renders new exercise form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => exercises_path, :method => "post" do
      assert_select "input#exercise_name", :name => "exercise[name]"
      assert_select "input#exercise_description", :name => "exercise[description]"
      assert_select "input#exercise_image", :name => "exercise[image]"
    end
  end
end
