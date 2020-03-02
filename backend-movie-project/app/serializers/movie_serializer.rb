class MovieSerializer < ActiveModel::Serializer
    attributes :id, :title, :release_year
    has_many :scenes
end