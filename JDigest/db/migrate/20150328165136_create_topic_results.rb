class CreateTopicResults < ActiveRecord::Migration
  def change
    create_table :topic_results do |t|
      t.references :topic, index: true
      t.belongs_to :result, index: true
      t.decimal :weight

      t.timestamps
    end
  end
end
