require 'test_helper'

class RestaurantPizzasControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get restaurant_pizzas_new_url
    assert_response :success
  end

end
