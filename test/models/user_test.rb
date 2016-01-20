require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'it should be invalid without an email and password' do
    user_without_email_or_password = User.new
    refute(user_without_email_or_password.valid?)
  end
end
