require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get products_index_url
    assert_response :success
  end

  test "should get medicare" do
    get products_medicare_url
    assert_response :success
  end

  test "should get medi_share" do
    get products_medi_share_url
    assert_response :success
  end

end
