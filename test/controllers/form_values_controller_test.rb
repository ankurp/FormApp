require "test_helper"

class FormValuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @form_value = form_values(:one)
  end

  test "should get index" do
    get form_values_url
    assert_response :success
  end

  test "should get new" do
    get new_form_value_url
    assert_response :success
  end

  test "should create form_value" do
    assert_difference("FormValue.count") do
      post form_values_url, params: {form_value: {form_attribute_id: @form_value.form_attribute_id, form_id: @form_value.form_id, form_submission: @form_value.form_submission, value: @form_value.value}}
    end

    assert_redirected_to form_value_url(FormValue.last)
  end

  test "should show form_value" do
    get form_value_url(@form_value)
    assert_response :success
  end

  test "should get edit" do
    get edit_form_value_url(@form_value)
    assert_response :success
  end

  test "should update form_value" do
    patch form_value_url(@form_value), params: {form_value: {form_attribute_id: @form_value.form_attribute_id, form_id: @form_value.form_id, form_submission: @form_value.form_submission, value: @form_value.value}}
    assert_redirected_to form_value_url(@form_value)
  end

  test "should destroy form_value" do
    assert_difference("FormValue.count", -1) do
      delete form_value_url(@form_value)
    end

    assert_redirected_to form_values_url
  end
end
