require 'test_helper'

class TapesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tape = tapes(:one)
  end

  test "should get index" do
    get tapes_url
    assert_response :success
  end

  test "should get new" do
    get new_tape_url
    assert_response :success
  end

  test "should create tape" do
    assert_difference('Tape.count') do
      post tapes_url, params: { tape: { code: @tape.code, director_id: @tape.director_id, name: @tape.name } }
    end

    assert_redirected_to tape_url(Tape.last)
  end

  test "should show tape" do
    get tape_url(@tape)
    assert_response :success
  end

  test "should get edit" do
    get edit_tape_url(@tape)
    assert_response :success
  end

  test "should update tape" do
    patch tape_url(@tape), params: { tape: { code: @tape.code, director_id: @tape.director_id, name: @tape.name } }
    assert_redirected_to tape_url(@tape)
  end

  test "should destroy tape" do
    assert_difference('Tape.count', -1) do
      delete tape_url(@tape)
    end

    assert_redirected_to tapes_url
  end
end
