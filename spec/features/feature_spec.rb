feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'vs.'
  end
end

feature 'See player 2s Hit Points' do
  scenario ' Hit points ' do
    sign_in_and_play
    expect(page).to have_content 'HP'
  end
end

feature 'Attack player 2' do
  scenario 'confirms Player 2 has been attacked' do
    sign_in_and_play
    click_button("Attack")
    expect(page).to have_content 'attacked'
  end
end

feature 'Attack player 2' do
  scenario 'confirms decrease in hitpoints for Player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content '90'
  end
end

feature 'Switching turns between players to continue battle ' do
  scenario 'When Player 1 finishes attack, switch turn to Player 2' do
    sign_in_and_play
    click_button('Attack')
    click_button('OK')
    expect(page).to have_content "Turn: Mittens!"
  end
end
