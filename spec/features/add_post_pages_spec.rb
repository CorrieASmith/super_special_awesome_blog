require 'rails_helper'

describe "the add a post process" do
  it "adds a new post" do
    visit posts_path
    click_on 'New Post'
    fill_in 'Name', :with => 'The Death of Tristan Taylor'
    click_on 'Create Post'
    expect(page).to have_content 'Post'
  end
end
