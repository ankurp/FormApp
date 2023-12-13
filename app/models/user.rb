class User < ApplicationRecord
  has_many :form_submissions, dependent: :destroy
  has_many :forms, through: :form_submissions
end
