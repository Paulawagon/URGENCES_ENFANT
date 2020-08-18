class CreateAnalyses < ActiveRecord::Migration[6.0]
  def change
    create_table :analyses do |t|
      t.text :symptoms, array: true, default: []
      t.references :child, null: false, foreign_key: true

      t.timestamps
    end
  end
end
