class SurvivorsTribe < ActiveRecord::Base
  belongs_to :survivor
  belongs_to :tribe
end
