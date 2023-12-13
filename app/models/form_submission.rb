class FormSubmission < ApplicationRecord
  belongs_to :form
  belongs_to :user
  has_many :form_values, dependent: :destroy

  delegate :form_attributes, to: :form

  accepts_nested_attributes_for :form_values
end
