class Kitten < ActiveRecord::Base
  has_many :categories, through: :categorizations
  has_many :categorizations

  validates :image, presence: true

end