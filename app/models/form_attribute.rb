class FormAttribute < ApplicationRecord
  has_and_belongs_to_many :forms
  has_many :form_values, dependent: :destroy
end
