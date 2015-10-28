feature 'hit points' do
  scenario 'see player 2 hit points' do
    visit('/')
    fill_in('Player 1 Name', with: 'Hamza')
    fill_in('Player 2 Name', with: 'Eleni')
    click_button('Submit')
    expect(find('.player2_HP')).to have_content('Eleni 60 HP')
  end
end
