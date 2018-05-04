feature 'Battle' do
  scenario 'Add player names' do
    sign_in_and_play
    expect(page).to have_content("P1: Asia Vs. P2: Alastair")
  end
end

feature 'View hitpoints' do
  scenario 'See players 2 hit points' do
    sign_in_and_play
    expect(page).to have_content('Alastair: 100 HP')
  end
end

feature 'Attack' do
  scenario 'Attack oponent & see confirmation' do
    sign_in_and_play
    click_link 'Attack Alastair'
    expect(page).to have_content("Fuuuuuuck, Alastair has been hit!")
    end

  scenario 'Reduces player 2 HP by 10' do
    sign_in_and_play
    click_link 'Attack Alastair'
    expect(page).to have_content("Alastair: 90 HP")
  end

feature 'Switcher'
  scenario 'Switching turns' do
    sign_in_and_play
    click_link 'Attack Alastair'
    click_link 'Next Move'
    click_link 'Attack Asia'
    expect(page).to have_content("Fuuuuuuck, Asia has been hit!")


  end
end
