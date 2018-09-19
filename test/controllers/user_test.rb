require 'test_helper'

class UserTest < ActionDispatch::IntegrationTest

  def setup
    @user = User.new(username: "testadmin", email: "testadmin@mail.com", password: "testadmin", admin: true)
  end

  test "should get index" do
    get users_path
    assert_response :success
  end

  test "should get new" do
    get '/signup'
    assert_response :success
  end

  test "should get show" do
    get users_path(@user)
    assert_response :success
  end
  
end