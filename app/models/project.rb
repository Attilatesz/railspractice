class Project < ApplicationRecord
    dragonfly_accessor :image 
    validates :image, :title, :description,  :presence => true
end
