class Album < ActiveRecord::Base
  belongs_to :artist
  validates :title, :description, :release_date, :artist, presence: true
end
