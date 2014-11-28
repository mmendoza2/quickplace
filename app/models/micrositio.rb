class Micrositio < ActiveRecord::Base


  has_many :eventos, :primary_key => "uid"
  has_many :reservations
  has_many :reverse_relationmicrositios, foreign_key: "followed_id",
           class_name:  "Relationmicrositio",
           dependent:   :destroy
  has_many :followers, through: :reverse_relationmicrositios, source: :follower




  extend FriendlyId
  friendly_id :name, use: :slugged


end
