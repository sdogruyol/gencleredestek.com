require "test_helper"

class CompaniesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get companies_new_url
    assert_response :success
  end

  test "should get create" do
    get companies_create_url
    assert_response :success
  end
end
