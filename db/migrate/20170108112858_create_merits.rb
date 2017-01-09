class CreateMerits < ActiveRecord::Migration[5.0]
  def change
    create_table :merits do |t|
      t.string :description
      t.belongs_to :student, foreign_key: true

      t.timestamps
    end
  end
end
