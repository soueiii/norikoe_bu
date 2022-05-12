require 'test_helper'

class Admin::CounselingsControllerTest < ActionDispatch::IntegrationTest
  test 'should get show' do
    get admin_counselings_show_url
    assert_response :success
  end

  test 'should get update' do
    get admin_counselings_update_url
    assert_response :success
  end
end
