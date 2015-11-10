class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.references :tasklist, index: true, foreign_key: true
      t.integer :priority
      t.date :duedate
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
