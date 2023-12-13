user = User.create(name: "DHH")
attribute = FormAttribute.create(label: "Name", field_type: "input", is_required: true)
form = Form.create(name: "User Form")
form.form_attributes << attribute
user.forms << form
