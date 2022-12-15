require 'rails_helper'

RSpec.describe 'Merchants Index' do
  describe 'page' do
    it 'displays all merchants', :vcr do
      visit "/merchants"
      expect(page).to have_content("Schroeder-Jerde")
      expect(page).to have_content("Klein, Rempel and Jones")
    end
    it 'has each merchant name as a link to that merchant show page', :vcr do
      visit "/merchants"
      click_link "Schroeder-Jerde"
      expect(page).to have_content("Schroeder-Jerde")
      expect(page).to have_current_path("/merchants/1")
    end
  end
end