class Skill < ApplicationRecord
  def to_partial_path
    "admin/skills/skill"
  end
  has_one_attached :icon
end
