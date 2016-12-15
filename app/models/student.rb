class Student < ApplicationRecord
  has_many :registrations
  has_many :classes, through: :registrations

  validates :f_name, :l_name, :grad_yr, :netid, :password, presence: true
  validates :grad_yr, numericality: true
  


  scope :by_alpha, -> { order(:l_name, :f_name) }
  scope :by_year, -> { order(:grad_yr)}

  def to_s
    netid
  end

  def student_genius
    "Welcome, #{f_name} #{l_name}! You're so smart!"
  end

end
