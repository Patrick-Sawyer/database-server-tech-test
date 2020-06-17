feature 'user can set and get data' do
  scenario 'setting and getting data' do
    visit '/set?test1=response1'
    visit '/get?key=test1'
    expect(page).to have_content('response1')
    visit '/set?test2=response2'
    visit '/get?key=test2'
    expect(page).to have_content('response2')
  end
end
