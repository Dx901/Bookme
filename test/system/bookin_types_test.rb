require "application_system_test_case"

class BookinTypesTest < ApplicationSystemTestCase
  setup do
    @bookin_type = bookin_types(:one)
  end

  test "visiting the index" do
    visit bookin_types_url
    assert_selector "h1", text: "Bookin types"
  end

  test "should create bookin type" do
    visit bookin_types_url
    click_on "New bookin type"

    fill_in "Color", with: @bookin_type.color
    fill_in "Duration", with: @bookin_type.duration
    fill_in "Location", with: @bookin_type.location
    fill_in "Name", with: @bookin_type.name
    check "Payment required" if @bookin_type.payment_required
    fill_in "Price", with: @bookin_type.price
    fill_in "User", with: @bookin_type.user_id
    click_on "Create Bookin type"

    assert_text "Bookin type was successfully created"
    click_on "Back"
  end

  test "should update Bookin type" do
    visit bookin_type_url(@bookin_type)
    click_on "Edit this bookin type", match: :first

    fill_in "Color", with: @bookin_type.color
    fill_in "Duration", with: @bookin_type.duration
    fill_in "Location", with: @bookin_type.location
    fill_in "Name", with: @bookin_type.name
    check "Payment required" if @bookin_type.payment_required
    fill_in "Price", with: @bookin_type.price
    fill_in "User", with: @bookin_type.user_id
    click_on "Update Bookin type"

    assert_text "Bookin type was successfully updated"
    click_on "Back"
  end

  test "should destroy Bookin type" do
    visit bookin_type_url(@bookin_type)
    click_on "Destroy this bookin type", match: :first

    assert_text "Bookin type was successfully destroyed"
  end
end
