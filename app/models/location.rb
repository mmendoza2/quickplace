class Location < ActiveRecord::Base

  validates :name, presence: true


  belongs_to :actividad
  has_many :actividades, through: :locs


  extend FriendlyId
  friendly_id :name, use: :slugged
end
