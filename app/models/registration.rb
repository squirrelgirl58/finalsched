class Registration < ApplicationRecord
  belongs_to :course
  belongs_to :student

  validates :course, :student, presence: true

  def registration_info
    "#{id_num} #{@Student.f_name} #{@student.l_name} #{@course.c_name}"
  end

end
