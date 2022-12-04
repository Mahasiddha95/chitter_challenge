def post_a_peep
    scenario 'submitting a message' do
      visit '/peeps'
      fill_in 'peep', with: 'This is a peep'
      click_button 'Post'

      expect(page).to have_content 'This is a peep'
    end
  end
