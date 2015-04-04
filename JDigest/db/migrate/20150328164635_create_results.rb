class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.string :title
      t.string :summary
      t.text :description
      t.string :url
      t.string :source
      t.string :level
      t.string :type
      t.date :post_date
      t.date :exp_date
      t.string :education_req

      t.timestamps
    end
  end
end
