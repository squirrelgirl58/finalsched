class Registration < ApplicationRecord
  belongs_to :course
  belongs_to :student

  validates :course, :student, presence: true

  def grade_format
    "#{grade}/100"
  end

end
