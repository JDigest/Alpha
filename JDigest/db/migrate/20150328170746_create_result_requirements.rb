class CreateResultRequirements < ActiveRecord::Migration
  def change
    create_table :result_requirements do |t|
      t.references :result, index: true
      t.belongs_to :requirement, index: true
      t.decimal :year
      t.string :level

      t.timestamps
    end
  end
end
