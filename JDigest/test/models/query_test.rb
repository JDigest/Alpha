require 'test_helper'
# require 'yui/compressor'

class QueryTest < ActiveSupport::TestCase
    fixtures :queries

    test 'query attributes should not be empty' do
       query = Query.new
       assert query.invalid?
       assert query.errors[:query_text].any?
       assert query.errors[:location_text].any?
       # assert query.errors[:user_locaiton].any?
    end

    test 'query text cannot be too long' do
        query = Query.new(query_text: '',
            location_text: 'Toronto, ON'
            # user_locaiton: ''
            )

        query.query_text = 'Hypothetical text that is way longer than the allocated 40 characters so far'
        assert query.invalid?

        query.location_text = 'Hypothetical text that is way longer than the allocated 40 characters so far'
        assert query.invalid?

    end

end
