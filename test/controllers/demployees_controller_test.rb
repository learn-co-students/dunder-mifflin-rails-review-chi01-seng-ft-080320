require 'test_helper'

class DemployeesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get demployees_index_url
    assert_response :success
  end

  test "should get show" do
    get demployees_show_url
    assert_response :success
  end

  test "should get new" do
    get demployees_new_url
    assert_response :success
  end

  test "should get create" do
    get demployees_create_url
    assert_response :success
  end

  test "should get edit" do
    get demployees_edit_url
    assert_response :success
  end

  test "should get update" do
    get demployees_update_url
    assert_response :success
  end

  test "should get destroy" do
    get demployees_destroy_url
    assert_response :success
  end

end
