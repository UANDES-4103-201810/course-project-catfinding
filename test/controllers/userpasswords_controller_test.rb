require 'test_helper'

class UserpasswordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userpassword = userpasswords(:one)
  end

  test "should get index" do
    get userpasswords_url
    assert_response :success
  end

  test "should get new" do
    get new_userpassword_url
    assert_response :success
  end

  test "should create userpassword" do
    assert_difference('Userpassword.count') do
      post userpasswords_url, params: { userpassword: { password: @userpassword.password } }
    end

    assert_redirected_to userpassword_url(Userpassword.last)
  end

  test "should show userpassword" do
    get userpassword_url(@userpassword)
    assert_response :success
  end

  test "should get edit" do
    get edit_userpassword_url(@userpassword)
    assert_response :success
  end

  test "should update userpassword" do
    patch userpassword_url(@userpassword), params: { userpassword: { password: @userpassword.password } }
    assert_redirected_to userpassword_url(@userpassword)
  end

  test "should destroy userpassword" do
    assert_difference('Userpassword.count', -1) do
      delete userpassword_url(@userpassword)
    end

    assert_redirected_to userpasswords_url
  end
end
