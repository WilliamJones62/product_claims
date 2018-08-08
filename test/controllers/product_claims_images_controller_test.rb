require 'test_helper'

class ProductClaimsImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_claims_image = product_claims_images(:one)
  end

  test "should get index" do
    get product_claims_images_url
    assert_response :success
  end

  test "should get new" do
    get new_product_claims_image_url
    assert_response :success
  end

  test "should create product_claims_image" do
    assert_difference('ProductClaimsImage.count') do
      post product_claims_images_url, params: { product_claims_image: { image: @product_claims_image.image, product_claims_id: @product_claims_image.product_claims_id } }
    end

    assert_redirected_to product_claims_image_url(ProductClaimsImage.last)
  end

  test "should show product_claims_image" do
    get product_claims_image_url(@product_claims_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_claims_image_url(@product_claims_image)
    assert_response :success
  end

  test "should update product_claims_image" do
    patch product_claims_image_url(@product_claims_image), params: { product_claims_image: { image: @product_claims_image.image, product_claims_id: @product_claims_image.product_claims_id } }
    assert_redirected_to product_claims_image_url(@product_claims_image)
  end

  test "should destroy product_claims_image" do
    assert_difference('ProductClaimsImage.count', -1) do
      delete product_claims_image_url(@product_claims_image)
    end

    assert_redirected_to product_claims_images_url
  end
end
