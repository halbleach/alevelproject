class CreateDemerits < ActiveRecord::Migration[5.0]
  def change
    create_table :demerits do |t|
      t.string :description
      t.belongs_to :student, foreign_key: true

      t.timestamps
    end
  end
end
