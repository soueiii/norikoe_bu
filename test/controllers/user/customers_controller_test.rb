require 'test_helper'

class User::CustomersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get user_customers_show_url
    assert_response :success
  end

  test "should get edit" do
    get user_customers_edit_url
    assert_response :success
  end

  test "should get update" do
    get user_customers_update_url
    assert_response :success
  end

  test "should get confirm" do
    get user_customers_confirm_url
    assert_response :success
  end

  test "should get unsubscribe" do
    get user_customers_unsubscribe_url
    assert_response :success
  end

end
