require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'should valid with name and price' do
    product = build(:product, name: 'Kaos', price: 2_000_000)
    product.valid?

    expect(product.errors).to be_empty
  end
end
