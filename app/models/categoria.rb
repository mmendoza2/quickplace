class Categoria < ActiveRecord::Base
  has_many :eventos
  has_many :micrositios
  has_many :actividades

  has_many :reverse_relationcategorias, foreign_key: "followed_id",
           class_name:  "Relationcategoria",
           dependent:   :destroy
  has_many :followers, through: :reverse_relationcategorias, source: :follower


  has_attached_file :photo, :styles => {:biggest => "900x900>", :big => "600x600>", :medium => "400x400>", :small => "200x200>", :smallest =>"100x100>" },
                    :url  => ":s3_domain_url",
                    :path => "/:class/:attachment/:id_partition/:style/:filename"

  extend FriendlyId
  friendly_id :categoria, use: :slugged


end