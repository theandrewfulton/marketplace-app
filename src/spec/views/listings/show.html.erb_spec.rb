require 'rails_helper'

RSpec.describe "listings/show", type: :view do
  before(:each) do
    @listing = assign(:listing, Listing.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/Unit/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6.5/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/false/)
  end
end
