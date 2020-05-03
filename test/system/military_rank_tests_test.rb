require "application_system_test_case"

class MilitaryRankTestsTest < ApplicationSystemTestCase
  setup do
    @military_rank_test = military_rank_tests(:one)
  end

  test "visiting the index" do
    visit military_rank_tests_url
    assert_selector "h1", text: "Military Rank Tests"
  end

  test "creating a Military rank test" do
    visit military_rank_tests_url
    click_on "New Military Rank Test"

    fill_in "Points", with: @military_rank_test.points
    fill_in "Result", with: @military_rank_test.result
    fill_in "User", with: @military_rank_test.user_id
    click_on "Create Military rank test"

    assert_text "Military rank test was successfully created"
    click_on "Back"
  end

  test "updating a Military rank test" do
    visit military_rank_tests_url
    click_on "Edit", match: :first

    fill_in "Points", with: @military_rank_test.points
    fill_in "Result", with: @military_rank_test.result
    fill_in "User", with: @military_rank_test.user_id
    click_on "Update Military rank test"

    assert_text "Military rank test was successfully updated"
    click_on "Back"
  end

  test "destroying a Military rank test" do
    visit military_rank_tests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Military rank test was successfully destroyed"
  end
end
