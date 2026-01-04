class Dev < ApplicationRecord
  TAGS = ["CI/CD", "Frontend", "Backend", "Fullstack", "Database", "Data", "System"].freeze

  validates :title, presence: true, uniqueness: true
  validates :url, presence: true, uniqueness: true
  validates :tag, presence: true, inclusion: {in: TAGS}
end
