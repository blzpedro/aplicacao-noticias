require "application_system_test_case"

class InscritosTest < ApplicationSystemTestCase
  setup do
    @inscrito = inscritos(:one)
  end

  test "visiting the index" do
    visit inscritos_url
    assert_selector "h1", text: "Inscritos"
  end

  test "creating a Inscrito" do
    visit inscritos_url
    click_on "New Inscrito"

    fill_in "Email", with: @inscrito.email
    click_on "Create Inscrito"

    assert_text "Inscrito was successfully created"
    click_on "Back"
  end

  test "updating a Inscrito" do
    visit inscritos_url
    click_on "Edit", match: :first

    fill_in "Email", with: @inscrito.email
    click_on "Update Inscrito"

    assert_text "Inscrito was successfully updated"
    click_on "Back"
  end

  test "destroying a Inscrito" do
    visit inscritos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inscrito was successfully destroyed"
  end
end
