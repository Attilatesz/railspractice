class Project < ApplicationRecord
    dragonfly_accessor :image 
    validates :image, :title, :description,  :presence => true
    has_and_belongs_to_many :projects
end
