require 'rails_helper'

describe Categorization do

  it 'validates presence of category' do
    categorization = Categorization.new(
      category: Category.new,
    )
    expect(categorization).to have(0).errors_on(:category)

    categorization.category = nil
    expect(categorization).to have(1).errors_on(:category)
  end

  it 'validates uniqueness of category for each kitten' do
    category = Category.create!(name: "Some category")
    kitten = Kitten.create!(image: "some url")

    Categorization.create!(kitten_id: kitten.id, category: category)

    categorization = Categorization.new(category: category)
    expect(categorization).to have(0).errors_on(:category)

    categorization.kitten_id = kitten.id
    categorization.valid?
    expect(categorization.errors[:category]).to include("has already been taken")
  end

end