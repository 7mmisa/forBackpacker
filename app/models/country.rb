class Country < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :continent
  # delegate :name, to: :continent
end