class Location < ActiveRecord::Base

  belongs_to :actividad
   has_many :actividades, through: :locs

  validate :name, presence: true

  extend FriendlyId
  friendly_id :name, use: :slugged
end
