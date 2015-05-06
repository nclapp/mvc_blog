class CreateEntries < ActiveRecord::Migration
  def change
  	create_table :entries do |t|
  		t.string :title, null: false
  		t.string :body, null: false
  		t.belongs_to :author, class_name: "User", null: false

  		t.timestamps null: false
  	end
  end
end
