class Course < ApplicationRecord
  has_many :registrations, dependent: :destroy
  has_many :students, through: Registration
  belongs_to :professor

  validates :c_name, :desc, :professor_id, :max_enroll, presence: true
  validates :max_enroll, numericality: true

  scope :by_name, -> { order(:c_name) }

  def to_s
    c_name
  end

  def current_enrollment
      @class.students.count
  end

end
