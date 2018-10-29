require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get noticias" do
    get main_noticias_url
    assert_response :success
  end

end
