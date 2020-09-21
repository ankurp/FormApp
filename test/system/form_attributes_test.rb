require "application_system_test_case"

class FormAttributesTest < ApplicationSystemTestCase
  setup do
    @form_attribute = form_attributes(:one)
  end

  test "visiting the index" do
    visit form_attributes_url
    assert_selector "h1", text: "Form Attributes"
  end

  test "creating a Form attribute" do
    visit form_attributes_url
    click_on "New Form Attribute"

    fill_in "Field type", with: @form_attribute.field_type
    fill_in "Label", with: @form_attribute.label
    click_on "Create Form attribute"

    assert_text "Form attribute was successfully created"
    click_on "Back"
  end

  test "updating a Form attribute" do
    visit form_attributes_url
    click_on "Edit", match: :first

    fill_in "Field type", with: @form_attribute.field_type
    fill_in "Label", with: @form_attribute.label
    click_on "Update Form attribute"

    assert_text "Form attribute was successfully updated"
    click_on "Back"
  end

  test "destroying a Form attribute" do
    visit form_attributes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Form attribute was successfully destroyed"
  end
end
