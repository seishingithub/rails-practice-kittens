class Categorization < ActiveRecord::Base
  belongs_to :kitten
  belongs_to :category

  def self.kitten
    # code here
  end
end