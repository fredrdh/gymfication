require "test_helper"

class ChallengesDoneControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get challenges_done_new_url
    assert_response :success
  end

  test "should get create" do
    get challenges_done_create_url
    assert_response :success
  end

  test "should get index" do
    get challenges_done_index_url
    assert_response :success
  end

  test "should get show" do
    get challenges_done_show_url
    assert_response :success
  end

  test "should get edit" do
    get challenges_done_edit_url
    assert_response :success
  end

  test "should get update" do
    get challenges_done_update_url
    assert_response :success
  end

  test "should get destroy" do
    get challenges_done_destroy_url
    assert_response :success
  end
end
