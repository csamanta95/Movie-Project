class SceneSerializer < ActiveModel::Serializer
    attributes :id, :description, :image_url
    has_one :movie
end