class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.string :student_name
      t.string :lesson_type
      t.text :student_goal
      t.datetime :start_time
      t.datetime :created_at
      t.string :status
      t.integer :user_id

      t.timestamps
    end
  end
end
