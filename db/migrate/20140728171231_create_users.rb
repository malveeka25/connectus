class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string "username" , :limit => 16
      t.string "first_name", :limit => 16
      t.string "last_name", :limit => 16
      t.string "hashed_password", :limit => 16
      t.string "linked_in", :limit => 50
      t.integer "age", :limit => 5
      t.string "gender", :limit => 13
      t.text "about_me"
      t.string "contact_no", :limit => 10
      t.string "email", :limit => 30	
      t.timestamps
    end
  end
end
