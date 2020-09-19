class Port < ApplicationRecord
    
    has_many_attached :port_images
    
    belongs_to :admin
    has_many :comments
end
