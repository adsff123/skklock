class CreateMajors < ActiveRecord::Migration
  def change
    create_table :majors do |t|
      
      t.integer :major_id 
      t.string :major_name
      t.date :major_date

      t.timestamps null: false
    end
  end
end
