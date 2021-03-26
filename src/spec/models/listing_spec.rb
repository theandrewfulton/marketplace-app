require 'rails_helper'

RSpec.describe Listing, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  it "requires a title" do
    new_user = User.new(
    first_name: "Test",
    last_name: "User",
    email: "test@test,com",
    password: "Password1",
    )

    new_user.save!

    invalid_listing = Listing.new(
      location: "MyString",
      description: "MyText",
      price: 15,
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
      quantity_total: 1,
      quantity_available: 1,
      user: new_user,
      rating: 1.5,
      reviews: 1,
      sold: false
    )
    expect(valid_listing.valid?).to be(true)
    
  end
  it "requires quantity total to be greater than 0" do
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
      price: 15,
      quantity_total: 0,
      quantity_available: 0,
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
      quantity_total: 1,
      quantity_available: 1,
      user: new_user,
      rating: 1.5,
      reviews: 1,
      sold: false
    )
    expect(valid_listing.valid?).to be(true)
    
  end
  it "requires quantity available to be greater than 0 and less than or equal to quantity total" do
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
      price: 15,
      quantity_total: 50,
      quantity_available: -1,
      user: new_user,
      rating: 1.5,
      reviews: 1,
      sold: false
    )
    expect(invalid_listing.valid?).to be(false)

    invalid_listing_high = Listing.new(
      title: "MyString",
      description: "MyText",
      location: "MyString",
      price: 15,
      quantity_total: 50,
      quantity_available: 60,
      user: new_user,
      rating: 1.5,
      sold: false
    )
    expect(invalid_listing_high.valid?).to be(false)

    valid_listing = Listing.new(
      title: "MyString",
      location: "MyString",
      description: "MyText",
      price: 15,
      quantity_total: 50,
      quantity_available: 40,
      user: new_user,
      rating: 1.5,
      reviews: 1,
      sold: false
    )
    expect(valid_listing.valid?).to be(true)

    valid_listing_zero = Listing.new(
      title: "MyString",
      location: "MyString",
      description: "MyText",
      price: 15,
      quantity_total: 50,
      quantity_available: 0,
      user: new_user,
      rating: 1.5,
      reviews: 1,
      sold: false
    )
    expect(valid_listing_zero.valid?).to be(true)
    
  end
end
