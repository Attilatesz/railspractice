class Apprentice < ApplicationRecord
    has_and_belongs_to_many :teams
    validates :name, :github,  :presence => true
end
