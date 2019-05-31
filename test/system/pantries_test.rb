require "application_system_test_case"

class PantriesTest < ApplicationSystemTestCase
  setup do
    @pantry = pantries(:one)
  end

  test "visiting the index" do
    visit pantries_url
    assert_selector "h1", text: "Pantries"
  end

  test "creating a Pantry" do
    visit pantries_url
    click_on "New Pantry"

    fill_in "Category", with: @pantry.category
    fill_in "Date of purchase", with: @pantry.date_of_purchase
    fill_in "Item name", with: @pantry.item_name
    fill_in "Order more", with: @pantry.order_more
    fill_in "Qty", with: @pantry.qty
    click_on "Create Pantry"

    assert_text "Pantry was successfully created"
    click_on "Back"
  end

  test "updating a Pantry" do
    visit pantries_url
    click_on "Edit", match: :first

    fill_in "Category", with: @pantry.category
    fill_in "Date of purchase", with: @pantry.date_of_purchase
    fill_in "Item name", with: @pantry.item_name
    fill_in "Order more", with: @pantry.order_more
    fill_in "Qty", with: @pantry.qty
    click_on "Update Pantry"

    assert_text "Pantry was successfully updated"
    click_on "Back"
  end

  test "destroying a Pantry" do
    visit pantries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pantry was successfully destroyed"
  end
end
