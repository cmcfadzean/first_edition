require 'test_helper'

class ChaptersControllerTest < ActionController::TestCase
  setup do
    @book = books(:one)
    @chapter = chapters(:one)
  end

  test "should get index" do
    get :index, params: { book_id: @book }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { book_id: @book }
    assert_response :success
  end

  test "should create chapter" do
    assert_difference('Chapter.count') do
      post :create, params: { book_id: @book, chapter: @chapter.attributes }
    end

    assert_redirected_to book_chapter_path(@book, Chapter.last)
  end

  test "should show chapter" do
    get :show, params: { book_id: @book, id: @chapter }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { book_id: @book, id: @chapter }
    assert_response :success
  end

  test "should update chapter" do
    put :update, params: { book_id: @book, id: @chapter, chapter: @chapter.attributes }
    assert_redirected_to book_chapter_path(@book, Chapter.last)
  end

  test "should destroy chapter" do
    assert_difference('Chapter.count', -1) do
      delete :destroy, params: { book_id: @book, id: @chapter }
    end

    assert_redirected_to book_chapters_path(@book)
  end
end
