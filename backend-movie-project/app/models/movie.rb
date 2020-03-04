class Movie < ApplicationRecord
    has_many :scenes, dependent: :destroy
end
