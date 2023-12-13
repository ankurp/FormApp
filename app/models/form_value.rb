class FormValue < ApplicationRecord
  belongs_to :form_attribute
  belongs_to :form_submission
end
