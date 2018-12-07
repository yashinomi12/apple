require "application_system_test_case"

class AppleModelsTest < ApplicationSystemTestCase
  setup do
    @apple_model = apple_models(:one)
  end

  test "visiting the index" do
    visit apple_models_url
    assert_selector "h1", text: "Apple Models"
  end

  test "creating a Apple model" do
    visit apple_models_url
    click_on "New Apple Model"

    click_on "Create Apple model"

    assert_text "Apple model was successfully created"
    click_on "Back"
  end

  test "updating a Apple model" do
    visit apple_models_url
    click_on "Edit", match: :first

    click_on "Update Apple model"

    assert_text "Apple model was successfully updated"
    click_on "Back"
  end

  test "destroying a Apple model" do
    visit apple_models_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Apple model was successfully destroyed"
  end
end
