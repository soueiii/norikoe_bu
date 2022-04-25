class Counseling < ApplicationRecord
  belongs_to :user
  belongs_to :genre
  validates :level, presence: true, numericality: { greater_than_or_equal_to: 1, less_than: 5 }
end
