class LegoSetSerializer < ActiveModel::Serializer
  attributes :name, :date_procured, :cost

  has_many :legos
end
