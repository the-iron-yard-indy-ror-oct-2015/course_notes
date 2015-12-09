require 'test_helper'

class UsersIntegrationTest < ActionDispatch::IntegrationTest

  test "users can sign up" do
    create(:subscription_plan)
    visit(new_user_path)
    fill_in('Email', :with => Faker::Internet.email)
    fill_in('Password', :with => Faker::Internet.password)
    fill_in('Name', :with => Faker::Name.name)
    click_on("Create User")
    assert page.has_content?("billing")
  end

  test "users can login" do
    user = build(:user)
    password = Faker::Internet.password
    user.password = password
    user.password_confirmation = password
    user.save!
    visit(new_user_session_path)
    fill_in('Email', :with => user.email)
    fill_in('Password', :with => password)
    click_on("Login")
    assert current_url == root_url
  end

  test "keep rifraff out of admin" do
    user = build(:user, :role => "parent")
    password = Faker::Internet.password
    user.password = password
    user.password_confirmation = password
    user.save!
    visit(new_user_session_path)
    fill_in('Email', :with => user.email)
    fill_in('Password', :with => password)
    click_on("Login")
    visit("/admin")
    assert current_url == new_user_session_url
  end

end
