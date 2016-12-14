class Student < ApplicationRecord
  has_many :registrations
  has_many :classes, through: :registrations

  validates :f_name, :l_name, :grad_yr, :netid, :password, presence: true
  validates :grad_yr, numericality: true

  scope :by_alpha, -> { order(:l_name, :f_name) }
  scope :by_year, -> { order(:grad_yr)}

  def net_id
    "#{l_name}#{f_name[0..1]}"
  end
  
end
