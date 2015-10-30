feature 'hit points' do
  scenario 'see player 2 hit points' do
    sign_in_and_play
    expect(find('#other_player_HP')).to have_content('Eleni 100 HP')
  end
end
