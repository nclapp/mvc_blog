class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
  	  t.belongs_to :entry
  	  t.belongs_to :tag
  	end
  end
end
