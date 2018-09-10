require 'rails_helper'

describe 'navigate' do
  before do
    author1 = Author.create(name: "Stephen King")
    @post = Post.create(title: "My Post", description: "My post desc", author: author1)
  end

  it 'shows the title on the show page in a h1 tag' do
    visit post_path(@post)
    expect(page).to have_css("h1", text: "My Post")
  end

  it 'to post pages' do
    visit post_path(@post)
    expect(page.status_code).to eq(200)
  end

  it 'shows the description on the show page in a p tag' do
    visit post_path(@post)
    expect(page).to have_css("p", text: "My post desc")
  end
end

describe 'form' do
  # it 'shows a new form that submits content and redirects and prints out params' do
  #   visit new_post_path
  #
  #   fill_in 'Title', with: "My post title"
  #   fill_in 'Description', with: "My post description"
  #   fill_in 'Author', with: "1"
  #
  #   click_on "Create Post"
  #
  #   expect(page).to have_content("My post title")
  # end

end
