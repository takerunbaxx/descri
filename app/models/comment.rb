class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :port
  belongs_to :admin
end
