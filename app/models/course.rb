class Course < ApplicationRecord
  belongs_to :degree

  def to_partial_path
    "admin/courses/course"
  end
end
