class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :technologyp
  has_one :user
end
