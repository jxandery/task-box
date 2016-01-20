require 'test_helper'

class CreateUserTest < ActionDispatch::IntegrationTest

  test 'a user can be created' do
    visit new_user_path
    fill_in "Email address", with: "jack@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Create Account"

    assert_current_path(login_path)
  end

end
