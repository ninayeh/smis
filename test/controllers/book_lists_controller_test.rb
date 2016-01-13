require 'test_helper'

class BookListsControllerTest < ActionController::TestCase
  setup do
    @book_list = book_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:book_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book_list" do
    assert_difference('BookList.count') do
      post :create, book_list: {  }
    end

    assert_redirected_to book_list_path(assigns(:book_list))
  end

  test "should show book_list" do
    get :show, id: @book_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book_list
    assert_response :success
  end

  test "should update book_list" do
    patch :update, id: @book_list, book_list: {  }
    assert_redirected_to book_list_path(assigns(:book_list))
  end

  test "should destroy book_list" do
    assert_difference('BookList.count', -1) do
      delete :destroy, id: @book_list
    end

    assert_redirected_to book_lists_path
  end
end
