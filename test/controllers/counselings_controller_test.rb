require 'test_helper'

class CounselingsControllerTest < ActionDispatch::IntegrationTest
  test 'should get new' do
    get counselings_new_url
    assert_response :success
  end

  test 'should get create' do
    get counselings_create_url
    assert_response :success
  end

  test 'should get show' do
    get counselings_show_url
    assert_response :success
  end

  test 'should get edit' do
    get counselings_edit_url
    assert_response :success
  end

  test 'should get update' do
    get counselings_update_url
    assert_response :success
  end

  test 'should get destroy' do
    get counselings_destroy_url
    assert_response :success
  end
end
