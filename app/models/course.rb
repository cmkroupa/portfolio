class Course < ApplicationRecord
  DEGREES = {
    "CS": "Honours Specialization in Computer Science",
    "DS": "Major in Data Science"
  }
  validates :degree, presence: true, inclusion: {in: DEGREES.keys.map(&:to_s)}
  validates :title, presence: true
  validates :description, presence: true
end
