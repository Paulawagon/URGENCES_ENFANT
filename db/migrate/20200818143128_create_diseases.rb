class CreateDiseases < ActiveRecord::Migration[6.0]
  def change
    create_table :diseases do |t|
      t.string :name
      t.text :symptoms, array: true, default: []
      t.text :behavior
      t.text :when_consult
      t.text :need_know
      t.text :prevention

      t.timestamps
    end
  end
end
