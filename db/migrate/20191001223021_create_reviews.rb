class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :inquiry
      t.string :answer
      t.integer :interview_id
      t.timestamps
    end
  end
end
