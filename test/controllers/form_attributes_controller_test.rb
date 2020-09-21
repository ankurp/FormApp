require 'test_helper'

class FormAttributesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @form_attribute = form_attributes(:one)
  end

  test "should get index" do
    get form_attributes_url
    assert_response :success
  end

  test "should get new" do
    get new_form_attribute_url
    assert_response :success
  end

  test "should create form_attribute" do
    assert_difference('FormAttribute.count') do
      post form_attributes_url, params: { form_attribute: { field_type: @form_attribute.field_type, label: @form_attribute.label } }
    end

    assert_redirected_to form_attribute_url(FormAttribute.last)
  end

  test "should show form_attribute" do
    get form_attribute_url(@form_attribute)
    assert_response :success
  end

  test "should get edit" do
    get edit_form_attribute_url(@form_attribute)
    assert_response :success
  end

  test "should update form_attribute" do
    patch form_attribute_url(@form_attribute), params: { form_attribute: { field_type: @form_attribute.field_type, label: @form_attribute.label } }
    assert_redirected_to form_attribute_url(@form_attribute)
  end

  test "should destroy form_attribute" do
    assert_difference('FormAttribute.count', -1) do
      delete form_attribute_url(@form_attribute)
    end

    assert_redirected_to form_attributes_url
  end
end
