class CreateTags < ActiveRecord::Migration
  def change
  	create_table :tags do |t|
  		t.string :tagword, null: false, unique: true

  		t.timestamps null: false
  	end
  end
end
