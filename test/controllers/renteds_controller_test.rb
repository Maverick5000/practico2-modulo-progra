require 'test_helper'

class RentedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rented = renteds(:one)
  end

  test "should get index" do
    get renteds_url
    assert_response :success
  end

  test "should get new" do
    get new_rented_url
    assert_response :success
  end

  test "should create rented" do
    assert_difference('Rented.count') do
      post renteds_url, params: { rented: { client_id: @rented.client_id, tape_id: @rented.tape_id } }
    end

    assert_redirected_to rented_url(Rented.last)
  end

  test "should show rented" do
    get rented_url(@rented)
    assert_response :success
  end

  test "should get edit" do
    get edit_rented_url(@rented)
    assert_response :success
  end

  test "should update rented" do
    patch rented_url(@rented), params: { rented: { client_id: @rented.client_id, tape_id: @rented.tape_id } }
    assert_redirected_to rented_url(@rented)
  end

  test "should destroy rented" do
    assert_difference('Rented.count', -1) do
      delete rented_url(@rented)
    end

    assert_redirected_to renteds_url
  end
end
