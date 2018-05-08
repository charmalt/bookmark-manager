feature 'BookmarkManager' do

  scenario 'Click button to view links' do
    visit('/')
    click_button 'View Links'
    expect(page).to have_content('http://makersacademy.com')
  end

end
