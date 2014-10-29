class Actividad < ActiveRecord::Base

  belongs_to :location

  has_many :locations, through: :locs
  has_many :reverse_relationactividades, foreign_key: "followed_id",
           class_name:  "Relationactividad",
           dependent:   :destroy
  has_many :followers, through: :reverse_relationactividades, source: :follower



  extend FriendlyId
  friendly_id :actividad, use: :slugged

end
