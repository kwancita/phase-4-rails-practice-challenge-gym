class GymSerializer < ActiveModel::Serializer
  attributes :id, :name, :address
  has_many :memberships
  has_many :clients
end
