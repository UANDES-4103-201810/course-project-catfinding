require "application_system_test_case"

class UserFundProjectsTest < ApplicationSystemTestCase
  setup do
    @user_fund_project = user_fund_projects(:one)
  end

  test "visiting the index" do
    visit user_fund_projects_url
    assert_selector "h1", text: "User Fund Projects"
  end

  test "creating a User fund project" do
    visit user_fund_projects_url
    click_on "New User Fund Project"

    fill_in "Project", with: @user_fund_project.project_id
    fill_in "User", with: @user_fund_project.user_id
    click_on "Create User fund project"

    assert_text "User fund project was successfully created"
    click_on "Back"
  end

  test "updating a User fund project" do
    visit user_fund_projects_url
    click_on "Edit", match: :first

    fill_in "Project", with: @user_fund_project.project_id
    fill_in "User", with: @user_fund_project.user_id
    click_on "Update User fund project"

    assert_text "User fund project was successfully updated"
    click_on "Back"
  end

  test "destroying a User fund project" do
    visit user_fund_projects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User fund project was successfully destroyed"
  end
end
