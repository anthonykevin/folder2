require 'test_helper'

class Folder2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @folder2 = folder2s(:one)
  end

  test "should get index" do
    get folder2s_url
    assert_response :success
  end

  test "should get new" do
    get new_folder2_url
    assert_response :success
  end

  test "should create folder2" do
    assert_difference('Folder2.count') do
      post folder2s_url, params: { folder2: { content: @folder2.content, title: @folder2.title } }
    end

    assert_redirected_to folder2_url(Folder2.last)
  end

  test "should show folder2" do
    get folder2_url(@folder2)
    assert_response :success
  end

  test "should get edit" do
    get edit_folder2_url(@folder2)
    assert_response :success
  end

  test "should update folder2" do
    patch folder2_url(@folder2), params: { folder2: { content: @folder2.content, title: @folder2.title } }
    assert_redirected_to folder2_url(@folder2)
  end

  test "should destroy folder2" do
    assert_difference('Folder2.count', -1) do
      delete folder2_url(@folder2)
    end

    assert_redirected_to folder2s_url
  end
end
