require "application_system_test_case"

class FormValuesTest < ApplicationSystemTestCase
  setup do
    @form_value = form_values(:one)
  end

  test "visiting the index" do
    visit form_values_url
    assert_selector "h1", text: "Form Values"
  end

  test "creating a Form value" do
    visit form_values_url
    click_on "New Form Value"

    fill_in "Form attribute", with: @form_value.form_attribute_id
    fill_in "Form", with: @form_value.form_id
    fill_in "Form submission", with: @form_value.form_submission
    fill_in "Value", with: @form_value.value
    click_on "Create Form value"

    assert_text "Form value was successfully created"
    click_on "Back"
  end

  test "updating a Form value" do
    visit form_values_url
    click_on "Edit", match: :first

    fill_in "Form attribute", with: @form_value.form_attribute_id
    fill_in "Form", with: @form_value.form_id
    fill_in "Form submission", with: @form_value.form_submission
    fill_in "Value", with: @form_value.value
    click_on "Update Form value"

    assert_text "Form value was successfully updated"
    click_on "Back"
  end

  test "destroying a Form value" do
    visit form_values_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Form value was successfully destroyed"
  end
end
