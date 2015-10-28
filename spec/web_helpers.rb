def sign_in_and_play
  visit('/')
  fill_in('Player 1 Name', with: 'Hamza')
  fill_in('Player 2 Name', with: 'Eleni')
  click_button('Submit')
end
