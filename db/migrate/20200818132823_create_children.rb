class CreateChildren < ActiveRecord::Migration[6.0]
  def change
    create_table :children do |t|
      t.string :first_name
      t.date :birth_date
      t.integer :weight
      t.boolean :cardiac
      t.boolean :respiratory
      t.boolean :prematurity
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
