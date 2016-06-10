require 'test_helper'

class WelcomesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @welcome = welcomes(:one)
  end

  test "should get index" do
    get welcomes_url
    assert_response :success
  end

  test "should get new" do
    get new_welcome_url
    assert_response :success
  end

  test "should create welcome" do
    assert_difference('Welcome.count') do
      post welcomes_url, params: { welcome: { quote: @welcome.quote } }
    end

    assert_redirected_to welcome_path(Welcome.last)
  end

  test "should show welcome" do
    get welcome_url(@welcome)
    assert_response :success
  end

  test "should get edit" do
    get edit_welcome_url(@welcome)
    assert_response :success
  end

  test "should update welcome" do
    patch welcome_url(@welcome), params: { welcome: { quote: @welcome.quote } }
    assert_redirected_to welcome_path(@welcome)
  end

  test "should destroy welcome" do
    assert_difference('Welcome.count', -1) do
      delete welcome_url(@welcome)
    end

    assert_redirected_to welcomes_path
  end
end
