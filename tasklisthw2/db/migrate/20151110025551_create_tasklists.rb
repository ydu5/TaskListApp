class CreateTasklists < ActiveRecord::Migration
  def change
    create_table :tasklists do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
