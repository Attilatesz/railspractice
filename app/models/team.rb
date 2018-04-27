class Team < ApplicationRecord
    dragonfly_accessor :image
    has_and_belongs_to_many :apprentices
    has_and_belongs_to_many :projects
    validates :image, :name,  :presence => true
end
