require 'test_helper'

class ListtodosControllerTest < ActionController::TestCase
  setup do
    @listtodo = listtodos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:listtodos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create listtodo" do
    assert_difference('Listtodo.count') do
      post :create, listtodo: { due: @listtodo.due, todo: @listtodo.todo }
    end

    assert_redirected_to listtodo_path(assigns(:listtodo))
  end

  test "should show listtodo" do
    get :show, id: @listtodo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @listtodo
    assert_response :success
  end

  test "should update listtodo" do
    patch :update, id: @listtodo, listtodo: { due: @listtodo.due, todo: @listtodo.todo }
    assert_redirected_to listtodo_path(assigns(:listtodo))
  end

  test "should destroy listtodo" do
    assert_difference('Listtodo.count', -1) do
      delete :destroy, id: @listtodo
    end

    assert_redirected_to listtodos_path
  end
end
