require 'test_helper'

class TagTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "notable" do
    tag = create(:tag)
    note = create(:note)
    tag.notes << note
    assert tag.reload.notes.include?(note)
  end

  test "downcase" do
    tag = create(:tag, :name => "DOWNCASE ME")
    assert tag.name == tag.name.downcase, "Should be downcased"
  end

  test "convert spaces" do
    tag = create(:tag, :name => "remove my spaces")
    assert tag.name == "remove-my-spaces", "Should replace spaces with -"
  end

  test "uniqueness" do
    tag = create(:tag)
    tag2 = build(:tag, :name => tag.name)
    tag2.save
    assert_not tag2.persisted?
    assert tag2.errors.full_messages.include?("Name has already been taken"), "Tag names should be unique"
  end

end
