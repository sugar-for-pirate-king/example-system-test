require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'is valid with name and price' do
    product = build(:product, name: 'Kaos', price: 2_000_000)
    product.valid?
    expect(product.errors).to be_empty
  end

  it 'is invalid without name' do
    product = build(:product, name: nil)
    product.valid?
    expect(product.errors[:name]).to include "can't be blank"
  end

  it 'is invalid without price' do
    product = build(:product, price: nil)
    product.valid?
    expect(product.errors[:price]).to include "can't be blank"
  end
end
