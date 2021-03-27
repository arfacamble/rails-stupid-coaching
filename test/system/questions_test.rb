require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "h2", text: "Ask your coach anything"
  end

  test "asking a question results in an angry response from the coach" do
    visit ask_url
    fill_in "question", with: "How are you today?"
    click_on "¡!ASK¡!"

    assert_text "Silly question, get dressed and go to work!"
  end

  test "expressing reluctance and fatigue brings ire from the coach" do
    visit ask_url
    fill_in "question", with: "Perhaps I shall snooze"
    click_on "¡!ASK¡!"

    take_screenshot
  end
end
