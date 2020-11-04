require 'test_helper'

class ReturnedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @returned = returneds(:one)
  end

  test "should get index" do
    get returneds_url
    assert_response :success
  end

  test "should get new" do
    get new_returned_url
    assert_response :success
  end

  test "should create returned" do
    assert_difference('Returned.count') do
      post returneds_url, params: { returned: { client_id: @returned.client_id, tape_id: @returned.tape_id } }
    end

    assert_redirected_to returned_url(Returned.last)
  end

  test "should show returned" do
    get returned_url(@returned)
    assert_response :success
  end

  test "should get edit" do
    get edit_returned_url(@returned)
    assert_response :success
  end

  test "should update returned" do
    patch returned_url(@returned), params: { returned: { client_id: @returned.client_id, tape_id: @returned.tape_id } }
    assert_redirected_to returned_url(@returned)
  end

  test "should destroy returned" do
    assert_difference('Returned.count', -1) do
      delete returned_url(@returned)
    end

    assert_redirected_to returneds_url
  end
end
