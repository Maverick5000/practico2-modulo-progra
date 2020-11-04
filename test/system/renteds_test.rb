require "application_system_test_case"

class RentedsTest < ApplicationSystemTestCase
  setup do
    @rented = renteds(:one)
  end

  test "visiting the index" do
    visit renteds_url
    assert_selector "h1", text: "Renteds"
  end

  test "creating a Rented" do
    visit renteds_url
    click_on "New Rented"

    fill_in "Client", with: @rented.client_id
    fill_in "Tape", with: @rented.tape_id
    click_on "Create Rented"

    assert_text "Rented was successfully created"
    click_on "Back"
  end

  test "updating a Rented" do
    visit renteds_url
    click_on "Edit", match: :first

    fill_in "Client", with: @rented.client_id
    fill_in "Tape", with: @rented.tape_id
    click_on "Update Rented"

    assert_text "Rented was successfully updated"
    click_on "Back"
  end

  test "destroying a Rented" do
    visit renteds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rented was successfully destroyed"
  end
end
