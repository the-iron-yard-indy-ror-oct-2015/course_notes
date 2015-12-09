require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "can create a user" do
    user = build(:user)
    assert user.save
  end

end
