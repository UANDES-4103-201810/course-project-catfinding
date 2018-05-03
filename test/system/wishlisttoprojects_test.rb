require "application_system_test_case"

class WishlisttoprojectsTest < ApplicationSystemTestCase
  setup do
    @wishlisttoproject = wishlisttoprojects(:one)
  end

  test "visiting the index" do
    visit wishlisttoprojects_url
    assert_selector "h1", text: "Wishlisttoprojects"
  end

  test "creating a Wishlisttoproject" do
    visit wishlisttoprojects_url
    click_on "New Wishlisttoproject"

    fill_in "Generate", with: @wishlisttoproject.generate
    fill_in "Model", with: @wishlisttoproject.model
    fill_in "Project To Wishlist", with: @wishlisttoproject.project_to_wishlist
    fill_in "Rails", with: @wishlisttoproject.rails
    click_on "Create Wishlisttoproject"

    assert_text "Wishlisttoproject was successfully created"
    click_on "Back"
  end

  test "updating a Wishlisttoproject" do
    visit wishlisttoprojects_url
    click_on "Edit", match: :first

    fill_in "Generate", with: @wishlisttoproject.generate
    fill_in "Model", with: @wishlisttoproject.model
    fill_in "Project To Wishlist", with: @wishlisttoproject.project_to_wishlist
    fill_in "Rails", with: @wishlisttoproject.rails
    click_on "Update Wishlisttoproject"

    assert_text "Wishlisttoproject was successfully updated"
    click_on "Back"
  end

  test "destroying a Wishlisttoproject" do
    visit wishlisttoprojects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wishlisttoproject was successfully destroyed"
  end
end
