class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :counseling
  has_many :goods, dependent: :destroy
  has_many :not_goods, dependent: :destroy
end
