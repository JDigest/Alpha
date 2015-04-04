class QueryTag < ActiveRecord::Base
  belongs_to :query
  belongs_to :tag
end
