require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  test "validation should trigger" do
    assert_not User.new(username: "", email: "", password: "").save
  end

  test "user should save" do
    assert User.new(username: "testadmin", email: "testadmin@mail.com", password: "testadmin").save
  end

  test "user could be admin" do
    @user = User.create(username: "testadmin", email: "testadmin@mail.com", password: "testadmin", admin: false)
    assert @user.toggle(:admin)
  end
end