class FormAttribute < ApplicationRecord
  has_and_belongs_to_many :forms, dependent: :destroy
end
