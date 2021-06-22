require 'test_helper'

class AproposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apropo = apropos(:one)
  end

  test "should get index" do
    get apropos_url
    assert_response :success
  end

  test "should get new" do
    get new_apropo_url
    assert_response :success
  end

  test "should create apropo" do
    assert_difference('Apropo.count') do
      post apropos_url, params: { apropo: {  } }
    end

    assert_redirected_to apropo_url(Apropo.last)
  end

  test "should show apropo" do
    get apropo_url(@apropo)
    assert_response :success
  end

  test "should get edit" do
    get edit_apropo_url(@apropo)
    assert_response :success
  end

  test "should update apropo" do
    patch apropo_url(@apropo), params: { apropo: {  } }
    assert_redirected_to apropo_url(@apropo)
  end

  test "should destroy apropo" do
    assert_difference('Apropo.count', -1) do
      delete apropo_url(@apropo)
    end

    assert_redirected_to apropos_url
  end
end
