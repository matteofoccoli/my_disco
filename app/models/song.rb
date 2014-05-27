class Song < ActiveRecord::Base
  belongs_to :album
  validates :title, :duration, :album, presence: true
  validates :duration, numericality: true
end
