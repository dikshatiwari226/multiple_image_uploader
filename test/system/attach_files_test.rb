require "application_system_test_case"

class AttachFilesTest < ApplicationSystemTestCase
  setup do
    @attach_file = attach_files(:one)
  end

  test "visiting the index" do
    visit attach_files_url
    assert_selector "h1", text: "Attach Files"
  end

  test "creating a Attach file" do
    visit attach_files_url
    click_on "New Attach File"

    fill_in "Image", with: @attach_file.image
    fill_in "Title", with: @attach_file.title
    click_on "Create Attach file"

    assert_text "Attach file was successfully created"
    click_on "Back"
  end

  test "updating a Attach file" do
    visit attach_files_url
    click_on "Edit", match: :first

    fill_in "Image", with: @attach_file.image
    fill_in "Title", with: @attach_file.title
    click_on "Update Attach file"

    assert_text "Attach file was successfully updated"
    click_on "Back"
  end

  test "destroying a Attach file" do
    visit attach_files_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Attach file was successfully destroyed"
  end
end
