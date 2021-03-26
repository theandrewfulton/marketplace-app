require 'rails_helper'

RSpec.describe Listing, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  it "requires a title" do
    new_user = User.new(
    first_name: "Test",
    last_name: "User",
    email: "test@test,com",
    password: "Password1",
    role: "super_user"
    )

    new_user.save!

    invalid_listing = Listing.new(
      location: "MyString",
      description: "MyText",
      price: 15,
      unit: "MyString",
      quantity_total: 1,
      quantity_available: 1,
      user: new_user,
      rating: 1.5,
      reviews: 1,
      sold: false
    )
    expect(invalid_listing.valid?).to be(false)

    valid_listing = Listing.new(
      title: "MyString",
      location: "MyString",
      description: "MyText",
      price: 15,
      unit: "MyString",
      quantity_total: 1,
      quantity_available: 1,
      user: new_user,
      rating: 1.5,
      reviews: 1,
      sold: false
    )
    expect(valid_listing.valid?).to be(true)
    
  end
  it "requires a location" do
    new_user = User.new(
    first_name: "Test",
    last_name: "User",
    email: "test@test,com",
    password: "Password1",
    role: "super_user"
    )

    new_user.save!

    invalid_listing = Listing.new(
      title: "MyString",
      description: "MyText",
      price: 15,
      unit: "MyString",
      quantity_total: 1,
      quantity_available: 1,
      user: new_user,
      rating: 1.5,
      reviews: 1,
      sold: false
    )
    expect(invalid_listing.valid?).to be(false)

    valid_listing = Listing.new(
      title: "MyString",
      location: "MyString",
      description: "MyText",
      price: 15,
      unit: "MyString",
      quantity_total: 1,
      quantity_available: 1,
      user: new_user,
      rating: 1.5,
      reviews: 1,
      sold: false
    )
    expect(valid_listing.valid?).to be(true)
    
  end
    it "requires price to be greater than 0" do
    new_user = User.new(
    first_name: "Test",
    last_name: "User",
    email: "test@test,com",
    password: "Password1",
    role: "super_user"
    )

    new_user.save!

    invalid_listing = Listing.new(
      title: "MyString",
      description: "MyText",
      location: "MyString",
      price: -10,
      unit: "MyString",
      quantity_total: 1,
      quantity_available: 1,
      user: new_user,
      rating: 1.5,
      reviews: 1,
      sold: false
    )
    expect(invalid_listing.valid?).to be(false)

    valid_listing = Listing.new(
      title: "MyString",
      location: "MyString",
      description: "MyText",
      price: 15,
      unit: "MyString",
      quantity_total: 1,
      quantity_available: 1,
      user: new_user,
      rating: 1.5,
      reviews: 1,
      sold: false
    )
    expect(valid_listing.valid?).to be(true)
    
  end
end
