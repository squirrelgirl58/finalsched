class Professor < ApplicationRecord
  has_many :courses

  validates :f_name, :l_name, :dept, presence: true

  scope :by_name, -> { order(:l_name, :f_name) }

  def course_load
    @professor.courses.count
  end
  
end
