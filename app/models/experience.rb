class Experience < ApplicationRecord
  validates :title, presence: true
  validates :organization, presence: true
  validates :description, presence: true
end
