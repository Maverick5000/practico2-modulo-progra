require "application_system_test_case"

class ReturnedsTest < ApplicationSystemTestCase
  setup do
    @returned = returneds(:one)
  end

  test "visiting the index" do
    visit returneds_url
    assert_selector "h1", text: "Returneds"
  end

  test "creating a Returned" do
    visit returneds_url
    click_on "New Returned"

    fill_in "Client", with: @returned.client_id
    fill_in "Tape", with: @returned.tape_id
    click_on "Create Returned"

    assert_text "Returned was successfully created"
    click_on "Back"
  end

  test "updating a Returned" do
    visit returneds_url
    click_on "Edit", match: :first

    fill_in "Client", with: @returned.client_id
    fill_in "Tape", with: @returned.tape_id
    click_on "Update Returned"

    assert_text "Returned was successfully updated"
    click_on "Back"
  end

  test "destroying a Returned" do
    visit returneds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Returned was successfully destroyed"
  end
end
