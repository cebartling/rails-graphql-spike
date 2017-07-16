class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.integer :year, null: false
      t.decimal :budget_in_millions, null: false
      t.decimal :box_office_in_millions, null: false

      t.timestamps
    end
  end
end
