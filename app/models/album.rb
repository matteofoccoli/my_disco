class Album < ActiveRecord::Base
  belongs_to :artist
  has_many :songs
  validates :title, :description, :release_date, :artist, :cover_image, presence: true
end
