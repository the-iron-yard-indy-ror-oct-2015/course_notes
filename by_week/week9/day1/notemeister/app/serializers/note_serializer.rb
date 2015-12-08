class NoteSerializer < ActiveModel::Serializer
  attributes :title, :body, :created_at, :updated_at

  has_many :tags
end
