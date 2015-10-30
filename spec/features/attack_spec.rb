feature 'attack' do
  scenario 'attacks player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Hamza attacked Eleni')
  end

  scenario 'reduces player 2 HP' do
    sign_in_and_play
    click_button('Attack')
    click_button('Okay')
    expect(find('#current_player_HP')).to have_content('Eleni 80 HP')
  end
end
