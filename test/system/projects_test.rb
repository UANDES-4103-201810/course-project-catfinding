require "application_system_test_case"

class ProjectsTest < ApplicationSystemTestCase
  setup do
    @project = projects(:one)
  end

  test "visiting the index" do
    visit projects_url
    assert_selector "h1", text: "Projects"
  end

  test "creating a Project" do
    visit projects_url
    click_on "New Project"

    fill_in "Approved", with: @project.approved
    fill_in "Category", with: @project.category_id
    fill_in "Currentamount", with: @project.currentamount
    fill_in "Deadline", with: @project.deadline
    fill_in "Description", with: @project.description
    fill_in "Goalamount", with: @project.goalamount
    fill_in "Markdown", with: @project.markdown
    fill_in "Pendingapproval", with: @project.pendingapproval
    fill_in "Tittle", with: @project.tittle
    click_on "Create Project"

    assert_text "Project was successfully created"
    click_on "Back"
  end

  test "updating a Project" do
    visit projects_url
    click_on "Edit", match: :first

    fill_in "Approved", with: @project.approved
    fill_in "Category", with: @project.category_id
    fill_in "Currentamount", with: @project.currentamount
    fill_in "Deadline", with: @project.deadline
    fill_in "Description", with: @project.description
    fill_in "Goalamount", with: @project.goalamount
    fill_in "Markdown", with: @project.markdown
    fill_in "Pendingapproval", with: @project.pendingapproval
    fill_in "Tittle", with: @project.tittle
    click_on "Update Project"

    assert_text "Project was successfully updated"
    click_on "Back"
  end

  test "destroying a Project" do
    visit projects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project was successfully destroyed"
  end
end
