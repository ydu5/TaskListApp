class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :tasklisting
      t.text :description
      t.integer :priority
      t.date :duedate
      t.boolean :complete

      t.timestamps null: false
    end
  end
end
