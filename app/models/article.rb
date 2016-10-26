class Article < ApplicationRecord
  has_many :comments
  validates :title, presence: true, #used to validate the data that is sent to model
            length: {minimum: 5 } # make sure the title length is atleast 5 chars
end
