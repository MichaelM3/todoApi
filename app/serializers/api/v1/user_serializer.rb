class Api::V1::UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password_digest, :avatar
  has_many :todos
end
