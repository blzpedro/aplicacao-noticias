require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get noticias" do
    get main_noticias_url
    assert_select "h1", "Noticias"
    assert_select "p", 2
    assert_response :success
  end

  test "should get premium" do
      get main_premium_url
      assert_select "a", "Voltar"
      assert_select "h3", 3 || "p", 3
      assert_response :success
  end

end
