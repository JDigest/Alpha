class CreateQueryTags < ActiveRecord::Migration
  def change
    create_table :query_tags do |t|
      t.references :query, index: true
      t.belongs_to :tag, index: true
      t.decimal :relevance

      t.timestamps
    end
  end
end
