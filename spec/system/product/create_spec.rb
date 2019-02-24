# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Create Product', type: :system do
  context 'with valid params' do
    it 'should create product' do
      visit new_product_path

      within '#product-form' do
        fill_in :product_name, with: 'Kaos'
        fill_in :product_price, with: '2000000'
        click_button 'Submit'
      end

      expect(page).to have_text 'Product has been created'
      expect(page).to have_text 'Kaos', '2000000'
    end
  end
end
