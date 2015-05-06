class Entry < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  has_many :taggings
  has_many :tags, through: :taggings

  validates_presence_of :author_id
  validates_presence_of :title
  valuidates_uniqueness_of :title
  validates_presence_of :body
end
