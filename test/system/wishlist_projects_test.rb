require "application_system_test_case"

class WishlistProjectsTest < ApplicationSystemTestCase
  setup do
    @wishlist_project = wishlist_projects(:one)
  end

  test "visiting the index" do
    visit wishlist_projects_url
    assert_selector "h1", text: "Wishlist Projects"
  end

  test "creating a Wishlist project" do
    visit wishlist_projects_url
    click_on "New Wishlist Project"

    fill_in "Project", with: @wishlist_project.project_id
    fill_in "Wishlist", with: @wishlist_project.wishlist_id
    click_on "Create Wishlist project"

    assert_text "Wishlist project was successfully created"
    click_on "Back"
  end

  test "updating a Wishlist project" do
    visit wishlist_projects_url
    click_on "Edit", match: :first

    fill_in "Project", with: @wishlist_project.project_id
    fill_in "Wishlist", with: @wishlist_project.wishlist_id
    click_on "Update Wishlist project"

    assert_text "Wishlist project was successfully updated"
    click_on "Back"
  end

  test "destroying a Wishlist project" do
    visit wishlist_projects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wishlist project was successfully destroyed"
  end
end
