class CreateUserTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :user_tasks do |t|
      t.references :task
      t.references :user
      t.boolean :check, default: false

      t.timestamps
    end
  end
end
