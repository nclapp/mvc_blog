class CreateEntries < ActiveRecord::Migration
  def change
  	create_table :entries do |t|
  		t.string :title
  		t.string :body
  		t.belongs_to :author, class_name: "User"
  	end
  end
end
