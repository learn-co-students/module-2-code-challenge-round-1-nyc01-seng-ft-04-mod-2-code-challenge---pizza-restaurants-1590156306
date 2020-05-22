require 'test_helper'

class RestaurantPizzasControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get restaurant_pizzas_new_url
    assert_response :success
  end

  test "should get create" do
    get restaurant_pizzas_create_url
    assert_response :success
  end

end
