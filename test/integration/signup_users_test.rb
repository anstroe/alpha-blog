require 'test_helper'

class SignupUsersTest < ActionDispatch::IntegrationTest

  def setup

  end

  test "sign up a user successfully" do
    get signup_path
    assert_template 'users/new'
    assert_difference 'User.count', 1 do
      post_via_redirect users_path, user: {username: "Bridget", email: "bridget@example.com", password: "password"}
    end
    assert_template 'users/show'
  end
end