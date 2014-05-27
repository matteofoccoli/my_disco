class Album < ActiveRecord::Base
  belongs_to :artist
  validates :title, :description, :release_date, :artist, :cover_image, presence: true
end
