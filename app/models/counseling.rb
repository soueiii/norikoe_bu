class Counseling < ApplicationRecord
  belongs_to :user
  belongs_to :genre
  has_many :answers, dependent: :destroy
  validates :level, presence: true, numericality: { greater_than_or_equal_to: 1, less_than: 6 }
  validates :title, presence: true
  validates :content, presence: true
end
