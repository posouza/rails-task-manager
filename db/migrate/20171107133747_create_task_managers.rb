class CreateTaskManagers < ActiveRecord::Migration[5.0]
  def change
    create_table :task_managers do |t|
      t.string :description
      t.date :deadline
      t.boolean :done

      t.timestamps
    end
  end
end
