class CreateActors < ActiveRecord::Migration[5.1]
  def change
    create_table :actors do |t|
      t.string :name, null: false
      t.date :birth_date, null: false
      t.integer :gender, null: false, default: 0

      t.timestamps
    end
  end
end
