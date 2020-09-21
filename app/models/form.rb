class Form < ApplicationRecord
  has_many :form_values, dependent: :destroy
  has_and_belongs_to_many :form_attributes, dependent: :destroy
  
  has_many :users, through: :form_values
end
