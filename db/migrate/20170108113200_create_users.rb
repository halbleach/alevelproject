class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :title
      t.string :firstname
      t.string :lastname
      t.belongs_to :role, foreign_key: true

      t.timestamps
    end
  end
end
