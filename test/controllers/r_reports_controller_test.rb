require "test_helper"

class RReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @r_report = r_reports(:one)
  end

  test "should get index" do
    get r_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_r_report_url
    assert_response :success
  end

  test "should create r_report" do
    assert_difference("RReport.count") do
      post r_reports_url, params: { r_report: { content: @r_report.content, title: @r_report.title } }
    end

    assert_redirected_to r_report_url(RReport.last)
  end

  test "should show r_report" do
    get r_report_url(@r_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_r_report_url(@r_report)
    assert_response :success
  end

  test "should update r_report" do
    patch r_report_url(@r_report), params: { r_report: { content: @r_report.content, title: @r_report.title } }
    assert_redirected_to r_report_url(@r_report)
  end

  test "should destroy r_report" do
    assert_difference("RReport.count", -1) do
      delete r_report_url(@r_report)
    end

    assert_redirected_to r_reports_url
  end
end
