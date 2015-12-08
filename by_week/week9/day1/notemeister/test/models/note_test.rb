require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "taggable" do
    note = create(:note)
    tag = create(:tag)
    note.tags << tag
    assert note.reload.tags.include?(tag)
  end

  test "tagged with" do
    tag = create(:tag)
    4.times do
      note = create(:note)
      note.tags << tag
    end
    bad_note = create(:note)
    bad_note.tags << build(:tag)
    assert Note.tagged_with(tag.name).count == 4
    assert_not Note.tagged_with(tag.name).include?(bad_note)
  end

  test "unique titles" do
    note = create(:tagged)
    note2 = build(:tagged, :title => note.title)
    assert_not note2.save
  end

  test "factory tagged" do
    note = create(:tagged)
    assert note.tags.count == 3
  end

end
