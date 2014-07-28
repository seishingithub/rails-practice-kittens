class Categorization < ActiveRecord::Base
  belongs_to :kitten
  belongs_to :category
  validates :category, presence: true, uniqueness: { scope: :kitten_id }

  def self.kitten
    # code here
  end
end