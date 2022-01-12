class CreateSustainabilityPractices < ActiveRecord::Migration[6.1]
  def change
    create_table :sustainability_practices do |t|
      t.boolean :human_welfare
      t.boolean :materials
      t.boolean :local
      t.boolean :packaging
      t.boolean :energy_neutral
      t.references :seller, null: false, foreign_key: true

      t.timestamps
    end
  end
end
