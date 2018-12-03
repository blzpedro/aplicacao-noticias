require "application_system_test_case"

class ResultadosTest < ApplicationSystemTestCase
  setup do
    @resultado = resultados(:one)
  end

  test "visiting the index" do
    visit resultados_url
    assert_selector "h1", text: "Resultados"
  end

  test "creating a Resultado" do
    visit resultados_url
    click_on "New Resultado"

    fill_in "Gols1", with: @resultado.gols1
    fill_in "Gols2", with: @resultado.gols2
    fill_in "Time1", with: @resultado.time1
    fill_in "Time2", with: @resultado.time2
    click_on "Create Resultado"

    assert_text "Resultado was successfully created"
    click_on "Back"
  end

  test "updating a Resultado" do
    visit resultados_url
    click_on "Edit", match: :first

    fill_in "Gols1", with: @resultado.gols1
    fill_in "Gols2", with: @resultado.gols2
    fill_in "Time1", with: @resultado.time1
    fill_in "Time2", with: @resultado.time2
    click_on "Update Resultado"

    assert_text "Resultado was successfully updated"
    click_on "Back"
  end

  test "destroying a Resultado" do
    visit resultados_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Resultado was successfully destroyed"
  end
end
