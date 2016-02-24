class Survivor < ActiveRecord::Base
  has_and_belongs_to_many :drafters
  has_and_belongs_to_many :seasons
  has_and_belongs_to_many :tribes
end
