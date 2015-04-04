require 'test_helper'

class TagTopicsControllerTest < ActionController::TestCase
  setup do
    @tag_topic = tag_topics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tag_topics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tag_topic" do
    assert_difference('TagTopic.count') do
      post :create, tag_topic: { tag_id: @tag_topic.tag_id, topic_id: @tag_topic.topic_id, weight: @tag_topic.weight }
    end

    assert_redirected_to tag_topic_path(assigns(:tag_topic))
  end

  test "should show tag_topic" do
    get :show, id: @tag_topic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tag_topic
    assert_response :success
  end

  test "should update tag_topic" do
    patch :update, id: @tag_topic, tag_topic: { tag_id: @tag_topic.tag_id, topic_id: @tag_topic.topic_id, weight: @tag_topic.weight }
    assert_redirected_to tag_topic_path(assigns(:tag_topic))
  end

  test "should destroy tag_topic" do
    assert_difference('TagTopic.count', -1) do
      delete :destroy, id: @tag_topic
    end

    assert_redirected_to tag_topics_path
  end
end
