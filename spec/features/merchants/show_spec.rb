require 'rails_helper'

RSpec.describe 'Merchant Show' do
  describe 'page' do
    it 'displays all items for the merchant', :vcr do
      visit "/merchants/1"
      expect(page).to have_content("Item Nemo Facere")
      expect(page).to have_content("Item Expedita Aliquam")
    end
  end
end