require "application_system_test_case"

class UserpasswordsTest < ApplicationSystemTestCase
  setup do
    @userpassword = userpasswords(:one)
  end

  test "visiting the index" do
    visit userpasswords_url
    assert_selector "h1", text: "Userpasswords"
  end

  test "creating a Userpassword" do
    visit userpasswords_url
    click_on "New Userpassword"

    fill_in "Password", with: @userpassword.password
    click_on "Create Userpassword"

    assert_text "Userpassword was successfully created"
    click_on "Back"
  end

  test "updating a Userpassword" do
    visit userpasswords_url
    click_on "Edit", match: :first

    fill_in "Password", with: @userpassword.password
    click_on "Update Userpassword"

    assert_text "Userpassword was successfully updated"
    click_on "Back"
  end

  test "destroying a Userpassword" do
    visit userpasswords_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Userpassword was successfully destroyed"
  end
end
