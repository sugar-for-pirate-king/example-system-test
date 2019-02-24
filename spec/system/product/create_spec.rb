# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Create Product', type: :system do
  before do
    visit new_product_path
  end

  context 'with valid params' do
    it 'should create product' do
      submit_product_form(name: 'Kaos', price: '2000000')
      expect(page).to have_text 'Product has been created'
      expect(page).to have_text 'Kaos', '2000000'
    end
  end

  context 'with invalid params' do
    context 'without name' do
      it 'should returns error' do
        submit_product_form(name: nil)
        expect(page).to have_text "Name can't be blank"
      end
    end

    context 'without price' do
      it 'should returns error' do
        submit_product_form(price: nil)
        expect(page).to have_text "Price can't be blank"
      end
    end
  end
end

def submit_product_form(params = {})
  within '#product-form' do
    fill_in :product_name, with: params[:name]
    fill_in :product_price, with: params[:price]

    click_button 'Submit'
  end
end
