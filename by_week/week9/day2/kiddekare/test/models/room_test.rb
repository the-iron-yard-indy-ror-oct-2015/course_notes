require 'test_helper'

class RoomTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should belong to a daycare" do
    room = create(:room)
    daycare = create(:daycare)
    daycare.rooms << room
    assert daycare.rooms.count == 1
    assert daycare.rooms.include?(room)
  end

  test "should have many children" do
    room = create(:room)
    10.times do
      child = create(:child)
      room.children << child
    end
    assert room.children.count == 10
  end

end
