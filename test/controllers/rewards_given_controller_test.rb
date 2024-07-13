require "test_helper"

class RewardsGivenControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get rewards_given_new_url
    assert_response :success
  end

  test "should get create" do
    get rewards_given_create_url
    assert_response :success
  end

  test "should get index" do
    get rewards_given_index_url
    assert_response :success
  end

  test "should get destroy" do
    get rewards_given_destroy_url
    assert_response :success
  end
end
