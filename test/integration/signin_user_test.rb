require 'test_helper'

class SignInTest < ActionDispatch::IntegrationTest

  test "registered user can sign in" do
    user = User.create(email_address: "justin@example.com", password: "password")

    visit login_path
    fill_in "Email address", with: user.email_address
    fill_in "Password", with: "password"
    click_button "Login"

    assert page.has_content?("Welcome, justin@example.com")
  end

  test "registered user logs in and is redirected to tasks#index view" do
    user = User.create(email_address: "justin@example.com", password: "password")

    visit login_path
    fill_in "Email address", with: user.email_address
    fill_in "Password", with: "password"
    click_button "Login"

    assert page.has_content?("Tasks by Jack")
    assert_current_path(tasks_path)
  end
end

