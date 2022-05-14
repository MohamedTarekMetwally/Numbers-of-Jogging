require "test_helper"

class JoggingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jogging = joggings(:one)
  end

  test "should get index" do
    get joggings_url
    assert_response :success
  end

  test "should get new" do
    get new_jogging_url
    assert_response :success
  end

  test "should create jogging" do
    assert_difference("Jogging.count") do
      post joggings_url, params: { jogging: { date: @jogging.date, distance: @jogging.distance, time: @jogging.time } }
    end

    assert_redirected_to jogging_url(Jogging.last)
  end

  test "should show jogging" do
    get jogging_url(@jogging)
    assert_response :success
  end

  test "should get edit" do
    get edit_jogging_url(@jogging)
    assert_response :success
  end

  test "should update jogging" do
    patch jogging_url(@jogging), params: { jogging: { date: @jogging.date, distance: @jogging.distance, time: @jogging.time } }
    assert_redirected_to jogging_url(@jogging)
  end

  test "should destroy jogging" do
    assert_difference("Jogging.count", -1) do
      delete jogging_url(@jogging)
    end

    assert_redirected_to joggings_url
  end
end
