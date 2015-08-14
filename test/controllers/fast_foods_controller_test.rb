require 'test_helper'

class FastFoodsControllerTest < ActionController::TestCase
  setup do
    @fast_food = fast_foods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fast_foods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fast_food" do
    assert_difference('FastFood.count') do
      post :create, fast_food: {  }
    end

    assert_redirected_to fast_food_path(assigns(:fast_food))
  end

  test "should show fast_food" do
    get :show, id: @fast_food
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fast_food
    assert_response :success
  end

  test "should update fast_food" do
    patch :update, id: @fast_food, fast_food: {  }
    assert_redirected_to fast_food_path(assigns(:fast_food))
  end

  test "should destroy fast_food" do
    assert_difference('FastFood.count', -1) do
      delete :destroy, id: @fast_food
    end

    assert_redirected_to fast_foods_path
  end
end
