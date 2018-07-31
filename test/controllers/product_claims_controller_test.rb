require 'test_helper'

class ProductClaimsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_claim = product_claims(:one)
  end

  test "should get index" do
    get product_claims_url
    assert_response :success
  end

  test "should get new" do
    get new_product_claim_url
    assert_response :success
  end

  test "should create product_claim" do
    assert_difference('ProductClaim.count') do
      post product_claims_url, params: { product_claim: { abf: @product_claim.abf, brand: @product_claim.brand, category: @product_claim.category, description: @product_claim.description, grassfed: @product_claim.grassfed, humane: @product_claim.humane, never: @product_claim.never, organic: @product_claim.organic, promo: @product_claim.promo, supermarket: @product_claim.supermarket } }
    end

    assert_redirected_to product_claim_url(ProductClaim.last)
  end

  test "should show product_claim" do
    get product_claim_url(@product_claim)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_claim_url(@product_claim)
    assert_response :success
  end

  test "should update product_claim" do
    patch product_claim_url(@product_claim), params: { product_claim: { abf: @product_claim.abf, brand: @product_claim.brand, category: @product_claim.category, description: @product_claim.description, grassfed: @product_claim.grassfed, humane: @product_claim.humane, never: @product_claim.never, organic: @product_claim.organic, promo: @product_claim.promo, supermarket: @product_claim.supermarket } }
    assert_redirected_to product_claim_url(@product_claim)
  end

  test "should destroy product_claim" do
    assert_difference('ProductClaim.count', -1) do
      delete product_claim_url(@product_claim)
    end

    assert_redirected_to product_claims_url
  end
end
