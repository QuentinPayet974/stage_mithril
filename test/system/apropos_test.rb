require "application_system_test_case"

class AproposTest < ApplicationSystemTestCase
  setup do
    @apropo = apropos(:one)
  end

  test "visiting the index" do
    visit apropos_url
    assert_selector "h1", text: "Apropos"
  end

  test "creating a Apropo" do
    visit apropos_url
    click_on "New Apropo"

    click_on "Create Apropo"

    assert_text "Apropo was successfully created"
    click_on "Back"
  end

  test "updating a Apropo" do
    visit apropos_url
    click_on "Edit", match: :first

    click_on "Update Apropo"

    assert_text "Apropo was successfully updated"
    click_on "Back"
  end

  test "destroying a Apropo" do
    visit apropos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Apropo was successfully destroyed"
  end
end
