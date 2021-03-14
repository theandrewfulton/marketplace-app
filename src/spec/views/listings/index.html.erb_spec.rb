require 'rails_helper'

RSpec.describe "listings/index", type: :view do
  before(:each) do
    assign(:listings, [
      Listing.create!(
        title: "Title",
        location: "Location",
        description: "MyText",
        price: 2.5,
        unit: "Unit",
        quantity_total: 3,
        quantity_available: 4,
        user: 5,
        rating: 6.5,
        reviews: 7,
        sold: false
      ),
      Listing.create!(
        title: "Title",
        location: "Location",
        description: "MyText",
        price: 2.5,
        unit: "Unit",
        quantity_total: 3,
        quantity_available: 4,
        user: 5,
        rating: 6.5,
        reviews: 7,
        sold: false
      )
    ])
  end

  it "renders a list of listings" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Location".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: "Unit".to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
    assert_select "tr>td", text: 6.5.to_s, count: 2
    assert_select "tr>td", text: 7.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
