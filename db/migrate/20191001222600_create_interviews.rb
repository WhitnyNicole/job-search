class CreateInterviews < ActiveRecord::Migration[6.0]
  def change
    create_table :interviews do |t|
      t.string :company_name
      t.string :location
      t.integer :salary
      t.datetime :day
      t.string :position
      t.timestamps
    end
  end
end
