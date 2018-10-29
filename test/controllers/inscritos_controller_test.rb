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

  test "should create inscrito" do
    assert_difference('Inscrito.count') do
      post inscritos_url, params: { inscrito: { email: @inscrito.email } }
    end

    assert_redirected_to inscrito_url(Inscrito.last)
  end

  test "should show inscrito" do
    get inscrito_url(@inscrito)
    assert_response :success
  end

  test "should get edit" do
    get edit_inscrito_url(@inscrito)
    assert_response :success
  end

  test "should update inscrito" do
    patch inscrito_url(@inscrito), params: { inscrito: { email: @inscrito.email } }
    assert_redirected_to inscrito_url(@inscrito)
  end

  test "should destroy inscrito" do
    assert_difference('Inscrito.count', -1) do
      delete inscrito_url(@inscrito)
    end

    assert_redirected_to inscritos_url
  end
end
