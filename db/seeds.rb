form = Form.create(name: "Sign up User")
form.form_attributes << FormAttribute.create(label: "Name", field_type: "text_field", is_required: true)
form.form_attributes << FormAttribute.create(label: "Date of Birth", field_type: "date_field", is_required: true)
form.form_attributes << FormAttribute.create(label: "Password", field_type: "password_field", is_required: true)
user = User.create(name: "DHH")
user.forms << form
