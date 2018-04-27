class Team < ApplicationRecord
    dragonfly_accessor :image
    has_and_belongs_to_many :apprentices
    validates :image, :name,  :presence => true
end
