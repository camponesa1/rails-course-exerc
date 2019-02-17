class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.integer :user_id
      t.integer :tutor_id
      t.string :child_name
      t.string :lesson_type
      t.string :student_goal
      t.datetime :start_time
      t.datetime :end_time
      t.datetime :created_at
      t.string :status
      

      t.timestamps
    end
  end
end
