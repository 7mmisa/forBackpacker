class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy 
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :continent
  belongs_to :country
end