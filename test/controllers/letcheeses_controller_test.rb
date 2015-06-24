require 'test_helper'

class LetcheesesControllerTest < ActionController::TestCase
  setup do
    @letcheese = letcheeses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:letcheeses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create letcheese" do
    assert_difference('Letcheese.count') do
      post :create, letcheese: { own_cheeses: @letcheese.own_cheeses }
    end

    assert_redirected_to letcheese_path(assigns(:letcheese))
  end

  test "should show letcheese" do
    get :show, id: @letcheese
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @letcheese
    assert_response :success
  end

  test "should update letcheese" do
    patch :update, id: @letcheese, letcheese: { own_cheeses: @letcheese.own_cheeses }
    assert_redirected_to letcheese_path(assigns(:letcheese))
  end

  test "should destroy letcheese" do
    assert_difference('Letcheese.count', -1) do
      delete :destroy, id: @letcheese
    end

    assert_redirected_to letcheeses_path
  end
end
