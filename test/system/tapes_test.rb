require "application_system_test_case"

class TapesTest < ApplicationSystemTestCase
  setup do
    @tape = tapes(:one)
  end

  test "visiting the index" do
    visit tapes_url
    assert_selector "h1", text: "Tapes"
  end

  test "creating a Tape" do
    visit tapes_url
    click_on "New Tape"

    fill_in "Code", with: @tape.code
    fill_in "Director", with: @tape.director_id
    fill_in "Name", with: @tape.name
    click_on "Create Tape"

    assert_text "Tape was successfully created"
    click_on "Back"
  end

  test "updating a Tape" do
    visit tapes_url
    click_on "Edit", match: :first

    fill_in "Code", with: @tape.code
    fill_in "Director", with: @tape.director_id
    fill_in "Name", with: @tape.name
    click_on "Update Tape"

    assert_text "Tape was successfully updated"
    click_on "Back"
  end

  test "destroying a Tape" do
    visit tapes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tape was successfully destroyed"
  end
end
