class CreateTagTopics < ActiveRecord::Migration
  def change
    create_table :tag_topics do |t|
      t.references :tag, index: true
      t.belongs_to :topic, index: true
      t.decimal :weight

      t.timestamps
    end
  end
end
