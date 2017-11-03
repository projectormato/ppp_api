class CreateLessonQueues < ActiveRecord::Migration[5.1]
  def change
    create_table :lesson_queues do |t|
      t.integer :lesson_id
      t.integer :user_id
      t.string :peer_token

      t.timestamps
    end
  end
end
