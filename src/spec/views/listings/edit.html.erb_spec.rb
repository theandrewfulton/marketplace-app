require 'rails_helper'

RSpec.describe "listings/edit", type: :view do
  before(:each) do
    @listing = assign(:listing, Listing.create!(
      title: "MyString",
      location: "MyString",
      description: "MyText",
      price: 1.5,
      unit: "MyString",
      quantity_total: 1,
      quantity_available: 1,
      user: 1,
      rating: 1.5,
      reviews: 1,
      sold: false
    ))
  end

  it "renders the edit listing form" do
    render

    assert_select "form[action=?][method=?]", listing_path(@listing), "post" do

      assert_select "input[name=?]", "listing[title]"

      assert_select "input[name=?]", "listing[location]"

      assert_select "textarea[name=?]", "listing[description]"

      assert_select "input[name=?]", "listing[price]"

      assert_select "input[name=?]", "listing[unit]"

      assert_select "input[name=?]", "listing[quantity_total]"

      assert_select "input[name=?]", "listing[quantity_available]"

      assert_select "input[name=?]", "listing[user]"

      assert_select "input[name=?]", "listing[rating]"

      assert_select "input[name=?]", "listing[reviews]"

      assert_select "input[name=?]", "listing[sold]"
    end
  end
end
