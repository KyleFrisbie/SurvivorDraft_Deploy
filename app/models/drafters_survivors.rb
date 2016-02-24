class DraftersSurvivors < ActiveRecord::Base
  belongs_to :drafter
  belongs_to :survivor
end
