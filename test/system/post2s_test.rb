# frozen_string_literal: true

require 'application_system_test_case'

class Post2sTest < ApplicationSystemTestCase
  setup do
    @post2 = post2s(:one)
  end

  test 'visiting the index' do
    visit post2s_url
    assert_selector 'h1', text: 'Post2s'
  end

  test 'creating a Post2' do
    visit post2s_url
    click_on 'New Post2'

    fill_in 'Author', with: @post2.author_id
    fill_in 'Commentary', with: @post2.commentary_id
    fill_in 'Content', with: @post2.content
    fill_in 'Title', with: @post2.title
    click_on 'Create Post2'

    assert_text 'Post2 was successfully created'
    click_on 'Back'
  end

  test 'updating a Post2' do
    visit post2s_url
    click_on 'Edit', match: :first

    fill_in 'Author', with: @post2.author_id
    fill_in 'Commentary', with: @post2.commentary_id
    fill_in 'Content', with: @post2.content
    fill_in 'Title', with: @post2.title
    click_on 'Update Post2'

    assert_text 'Post2 was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Post2' do
    visit post2s_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Post2 was successfully destroyed'
  end
end
