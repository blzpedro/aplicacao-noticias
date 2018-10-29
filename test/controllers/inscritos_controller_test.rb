require 'test_helper'

class InscritosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inscrito = inscritos(:one)
  end

  test "should get index" do
    get inscritos_url
    assert_response :success
  end

  test "should get new" do
    get new_inscrito_url
    assert_response :success
  end

  test "should show inscrito" do
    get inscrito_url(@inscrito)
    assert_response :success
  end

  test "should get edit" do
    get edit_inscrito_url(@inscrito)
    assert_response :success
  end
  
end
