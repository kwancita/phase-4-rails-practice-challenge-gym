class Client < ApplicationRecord
    has_many :memberships
    has_many :gym, through: :memberships
end
