feature 'switching turns' do

  before do
    sign_in_and_play
    click_button('Attack')
    click_button('Okay')
  end

  scenario "it is player2's turn after player1 attacks" do
    expect(page).to have_content("Eleni's turn")
  end

  scenario "after player2 attacks player1" do
    click_button('Attack')
    expect(page).to have_content("Eleni attacked Hamza")
  end
end
