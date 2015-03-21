require 'test_helper'
require 'yui/compressor'

class QueryTest < ActiveSupport::TestCase
    test 'query attributes should not be empty' do
       query = Query.new
       assert query.invalid?
       assert query.errors[:query_text].any?
       assert query.errors[:location_text].any?
       assert query.errors[:user_locaiton].any?
    end

end
