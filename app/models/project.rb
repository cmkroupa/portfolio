class Project < ApplicationRecord
  def to_partial_path
    "admin/projects/project"
  end
  has_one_attached :image
end
