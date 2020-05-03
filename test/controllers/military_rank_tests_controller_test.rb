require 'test_helper'

class MilitaryRankTestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @military_rank_test = military_rank_tests(:one)
  end

  test "should get index" do
    get military_rank_tests_url
    assert_response :success
  end

  test "should get new" do
    get new_military_rank_test_url
    assert_response :success
  end

  test "should create military_rank_test" do
    assert_difference('MilitaryRankTest.count') do
      post military_rank_tests_url, params: { military_rank_test: { points: @military_rank_test.points, result: @military_rank_test.result, user_id: @military_rank_test.user_id } }
    end

    assert_redirected_to military_rank_test_url(MilitaryRankTest.last)
  end

  test "should show military_rank_test" do
    get military_rank_test_url(@military_rank_test)
    assert_response :success
  end

  test "should get edit" do
    get edit_military_rank_test_url(@military_rank_test)
    assert_response :success
  end

  test "should update military_rank_test" do
    patch military_rank_test_url(@military_rank_test), params: { military_rank_test: { points: @military_rank_test.points, result: @military_rank_test.result, user_id: @military_rank_test.user_id } }
    assert_redirected_to military_rank_test_url(@military_rank_test)
  end

  test "should destroy military_rank_test" do
    assert_difference('MilitaryRankTest.count', -1) do
      delete military_rank_test_url(@military_rank_test)
    end

    assert_redirected_to military_rank_tests_url
  end
end
