feature 'BookmarkManager' do

  scenario 'Click button to view links' do
    visit('/')
    con = PG.connect :dbname => 'bookmark_manager_test', :user => 'charlenechetcuti'
    con.exec "INSERT INTO bookmarks (url) VALUES ('http://test.com')"
    click_button 'View Links'
    expect(page).to have_content('http://test.com')
  end

end
