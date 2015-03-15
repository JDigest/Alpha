class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.string :query_text
      t.string :location_text
      t.string :user_location

      t.timestamps
    end
  end
end
