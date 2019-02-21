require 'test_helper'

class ExposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expo = expos(:one)
  end

  test "should get index" do
    get expos_url
    assert_response :success
  end

  test "should get new" do
    get new_expo_url
    assert_response :success
  end

  test "should create expo" do
    assert_difference('Expo.count') do
      post expos_url, params: { expo: {  name: @expo. name, active: @expo.active, date: @expo.date, description: @expo.description, image_url: @expo.image_url, place: @expo.place } }
    end

    assert_redirected_to expo_url(Expo.last)
  end

  test "should show expo" do
    get expo_url(@expo)
    assert_response :success
  end

  test "should get edit" do
    get edit_expo_url(@expo)
    assert_response :success
  end

  test "should update expo" do
    patch expo_url(@expo), params: { expo: {  name: @expo. name, active: @expo.active, date: @expo.date, description: @expo.description, image_url: @expo.image_url, place: @expo.place } }
    assert_redirected_to expo_url(@expo)
  end

  test "should destroy expo" do
    assert_difference('Expo.count', -1) do
      delete expo_url(@expo)
    end

    assert_redirected_to expos_url
  end
end
