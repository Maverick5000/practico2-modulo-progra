require 'test_helper'

class ClientGenresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client_genre = client_genres(:one)
  end

  test "should get index" do
    get client_genres_url
    assert_response :success
  end

  test "should get new" do
    get new_client_genre_url
    assert_response :success
  end

  test "should create client_genre" do
    assert_difference('ClientGenre.count') do
      post client_genres_url, params: { client_genre: { client_id: @client_genre.client_id, genre_id: @client_genre.genre_id } }
    end

    assert_redirected_to client_genre_url(ClientGenre.last)
  end

  test "should show client_genre" do
    get client_genre_url(@client_genre)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_genre_url(@client_genre)
    assert_response :success
  end

  test "should update client_genre" do
    patch client_genre_url(@client_genre), params: { client_genre: { client_id: @client_genre.client_id, genre_id: @client_genre.genre_id } }
    assert_redirected_to client_genre_url(@client_genre)
  end

  test "should destroy client_genre" do
    assert_difference('ClientGenre.count', -1) do
      delete client_genre_url(@client_genre)
    end

    assert_redirected_to client_genres_url
  end
end
