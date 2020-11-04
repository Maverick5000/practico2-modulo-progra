require "application_system_test_case"

class ClientGenresTest < ApplicationSystemTestCase
  setup do
    @client_genre = client_genres(:one)
  end

  test "visiting the index" do
    visit client_genres_url
    assert_selector "h1", text: "Client Genres"
  end

  test "creating a Client genre" do
    visit client_genres_url
    click_on "New Client Genre"

    fill_in "Client", with: @client_genre.client_id
    fill_in "Genre", with: @client_genre.genre_id
    click_on "Create Client genre"

    assert_text "Client genre was successfully created"
    click_on "Back"
  end

  test "updating a Client genre" do
    visit client_genres_url
    click_on "Edit", match: :first

    fill_in "Client", with: @client_genre.client_id
    fill_in "Genre", with: @client_genre.genre_id
    click_on "Update Client genre"

    assert_text "Client genre was successfully updated"
    click_on "Back"
  end

  test "destroying a Client genre" do
    visit client_genres_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Client genre was successfully destroyed"
  end
end
