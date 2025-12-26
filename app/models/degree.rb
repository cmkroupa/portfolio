class Degree < ApplicationRecord
  has_many :courses, dependent: :destroy

  def to_partial_path
    "admin/degrees/degree"
  end
end
