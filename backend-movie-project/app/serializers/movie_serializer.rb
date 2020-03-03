class MovieSerializer < ActiveModel::Serializer
    attributes :id, :title, :release_year
    has_many :scenes

def scene_title
    self.object.scene.title
end

end