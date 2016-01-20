require 'test_helper'

class CreateUserTest < ActionDispatch::IntegrationTest

  test 'a user can be created' do
    visit new_user_path
    fill_in "Email address", with: "jack@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Create Account"

    assert_current_path(tasks_path)
    assert page.has_content?("Sign Out")
  end

  test "user email must be unique" do
    user = User.create(email_address: "justin@example.com", password: "password")

    visit new_user_path
    fill_in "Email address", with: user.email_address
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Create Account"

    assert page.has_content?("Invalid email address or password")
  end
end
