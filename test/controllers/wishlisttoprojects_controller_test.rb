require 'test_helper'

class WishlisttoprojectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wishlisttoproject = wishlisttoprojects(:one)
  end

  test "should get index" do
    get wishlisttoprojects_url
    assert_response :success
  end

  test "should get new" do
    get new_wishlisttoproject_url
    assert_response :success
  end

  test "should create wishlisttoproject" do
    assert_difference('Wishlisttoproject.count') do
      post wishlisttoprojects_url, params: { wishlisttoproject: { generate: @wishlisttoproject.generate, model: @wishlisttoproject.model, project_to_wishlist: @wishlisttoproject.project_to_wishlist, rails: @wishlisttoproject.rails } }
    end

    assert_redirected_to wishlisttoproject_url(Wishlisttoproject.last)
  end

  test "should show wishlisttoproject" do
    get wishlisttoproject_url(@wishlisttoproject)
    assert_response :success
  end

  test "should get edit" do
    get edit_wishlisttoproject_url(@wishlisttoproject)
    assert_response :success
  end

  test "should update wishlisttoproject" do
    patch wishlisttoproject_url(@wishlisttoproject), params: { wishlisttoproject: { generate: @wishlisttoproject.generate, model: @wishlisttoproject.model, project_to_wishlist: @wishlisttoproject.project_to_wishlist, rails: @wishlisttoproject.rails } }
    assert_redirected_to wishlisttoproject_url(@wishlisttoproject)
  end

  test "should destroy wishlisttoproject" do
    assert_difference('Wishlisttoproject.count', -1) do
      delete wishlisttoproject_url(@wishlisttoproject)
    end

    assert_redirected_to wishlisttoprojects_url
  end
end
