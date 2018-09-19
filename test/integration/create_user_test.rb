require 'test_helper'

class UserTest < ActionDispatch::IntegrationTest

  def setup
  end

  test "should generate signup form and create user" do
    get signup_path
    assert_template 'users/new'
    assert_difference (User.count), 1 do
      post users_path, params: {user: {id: "1", username: "testadmin", email: "testadmin@mail.com", password: "testadmin", admin: true}}
      follow_redirect!
      get
    end
    assert_template 'users/show'
    assert_match "testadmin", response.body
  end
end