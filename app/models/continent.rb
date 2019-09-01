class Continent < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :countries
end
