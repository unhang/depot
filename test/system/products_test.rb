require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit products_url
  #
  #   assert_selector "h1", text: "Product"
  # end

  test 'product is not valid without a unique title' do
    p products(:two)
    product = Product.new(title: products(:two).title,
                          description: 'yyy',
                          price: 1,
                          image_url: 'fred.gif')
    assert product.invalid?
    assert_equal [I18n.translate('errors.messages.taken')], product.errors[:title]
  end
end
