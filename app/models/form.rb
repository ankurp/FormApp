class Form < ApplicationRecord
  has_and_belongs_to_many :form_attributes, dependent: :destroy
  has_many :form_submissions, dependent: :destroy

  has_many :users, through: :form_submissions
end
