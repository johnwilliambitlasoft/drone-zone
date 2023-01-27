require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "creating a Product" do
    visit products_url
    click_on "New Product"

    fill_in "Per day price", with: @product.per_day_price
    fill_in "Product accessories", with: @product.product_accessories
    fill_in "Product available from date", with: @product.product_available_from_date
    fill_in "Product available to date", with: @product.product_available_to_date
    fill_in "Product description", with: @product.product_description
    fill_in "Product name", with: @product.product_name
    fill_in "Product type", with: @product.product_type
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "updating a Product" do
    visit products_url
    click_on "Edit", match: :first

    fill_in "Per day price", with: @product.per_day_price
    fill_in "Product accessories", with: @product.product_accessories
    fill_in "Product available from date", with: @product.product_available_from_date
    fill_in "Product available to date", with: @product.product_available_to_date
    fill_in "Product description", with: @product.product_description
    fill_in "Product name", with: @product.product_name
    fill_in "Product type", with: @product.product_type
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "destroying a Product" do
    visit products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product was successfully destroyed"
  end
end
