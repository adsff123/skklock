class CreateLocks < ActiveRecord::Migration
  def change
    create_table :locks do |t|
      
      t.string :major
      t.string :number, null: false, default: ""
      t.integer :user_id
      
      t.timestamps null: false
    end
  end
end
ㄱ