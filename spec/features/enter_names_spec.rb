feature 'Enter names' do
  scenario "submitting names" do
      visit('/')
      fill_in('Player 1 Name', with: 'Hamza')
      fill_in('Player 2 Name', with: 'Eleni')
      click_button('Submit')
      expect(page).to have_content('Hamza vs. Eleni')
  end
end
