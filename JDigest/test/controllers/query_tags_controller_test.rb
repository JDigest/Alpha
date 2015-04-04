require 'test_helper'

class QueryTagsControllerTest < ActionController::TestCase
  setup do
    @query_tag = query_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:query_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create query_tag" do
    assert_difference('QueryTag.count') do
      post :create, query_tag: { query_id: @query_tag.query_id, relevance: @query_tag.relevance, tag_id: @query_tag.tag_id }
    end

    assert_redirected_to query_tag_path(assigns(:query_tag))
  end

  test "should show query_tag" do
    get :show, id: @query_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @query_tag
    assert_response :success
  end

  test "should update query_tag" do
    patch :update, id: @query_tag, query_tag: { query_id: @query_tag.query_id, relevance: @query_tag.relevance, tag_id: @query_tag.tag_id }
    assert_redirected_to query_tag_path(assigns(:query_tag))
  end

  test "should destroy query_tag" do
    assert_difference('QueryTag.count', -1) do
      delete :destroy, id: @query_tag
    end

    assert_redirected_to query_tags_path
  end
end
