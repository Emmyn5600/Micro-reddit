require "application_system_test_case"

class CommentariesTest < ApplicationSystemTestCase
  setup do
    @commentary = commentaries(:one)
  end

  test "visiting the index" do
    visit commentaries_url
    assert_selector "h1", text: "Commentaries"
  end

  test "creating a Commentary" do
    visit commentaries_url
    click_on "New Commentary"

    fill_in "Author", with: @commentary.author_id
    fill_in "Content", with: @commentary.content
    click_on "Create Commentary"

    assert_text "Commentary was successfully created"
    click_on "Back"
  end

  test "updating a Commentary" do
    visit commentaries_url
    click_on "Edit", match: :first

    fill_in "Author", with: @commentary.author_id
    fill_in "Content", with: @commentary.content
    click_on "Update Commentary"

    assert_text "Commentary was successfully updated"
    click_on "Back"
  end

  test "destroying a Commentary" do
    visit commentaries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Commentary was successfully destroyed"
  end
end
