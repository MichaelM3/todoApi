class Api::V1::TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :deadline, :isCompleted
  has_one :user_id
end
