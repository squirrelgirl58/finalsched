class Professor < ApplicationRecord
  has_many :courses

  validates :f_name, :l_name, :dept, presence: true

  scope :by_name, -> { order(:l_name, :f_name) }

  def prof_name
    "Professor #{l_name}"
  end

  def to_s
    l_name
  end
end
