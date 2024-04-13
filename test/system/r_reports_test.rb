require "application_system_test_case"

class RReportsTest < ApplicationSystemTestCase
  setup do
    @r_report = r_reports(:one)
  end

  test "visiting the index" do
    visit r_reports_url
    assert_selector "h1", text: "R reports"
  end

  test "should create r report" do
    visit r_reports_url
    click_on "New r report"

    fill_in "Content", with: @r_report.content
    fill_in "Title", with: @r_report.title
    click_on "Create R report"

    assert_text "R report was successfully created"
    click_on "Back"
  end

  test "should update R report" do
    visit r_report_url(@r_report)
    click_on "Edit this r report", match: :first

    fill_in "Content", with: @r_report.content
    fill_in "Title", with: @r_report.title
    click_on "Update R report"

    assert_text "R report was successfully updated"
    click_on "Back"
  end

  test "should destroy R report" do
    visit r_report_url(@r_report)
    click_on "Destroy this r report", match: :first

    assert_text "R report was successfully destroyed"
  end
end
