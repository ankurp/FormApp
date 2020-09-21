class FormSubmission < ApplicationRecord
  belongs_to :form
  belongs_to :user
  has_many :form_values, dependent: :destroy
end
