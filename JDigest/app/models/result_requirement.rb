class ResultRequirement < ActiveRecord::Base
  belongs_to :result
  belongs_to :requirement
end
