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

  context 'with invalid params' do
    context 'without name' do
      it 'should returns error' do
        visit new_product_path

        within '#product-form' do
          fill_in :product_name, with: nil

          click_button 'Submit'
        end

        expect(page).to have_text "Name can't be blank"
      end
    end

    context 'without price' do
      it 'should returns error' do
        visit new_product_path

        within '#product-form' do
          fill_in :product_price, with: nil

          click_button 'Submit'
        end

        expect(page).to have_text "Price can't be blank"
      end
    end
  end
end
