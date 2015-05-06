class Tag < ActiveRecord::Base
  has_many :taggings
  has_many :entries, through: :taggings

  validates_uniqueness_of :tagword
  validates_presence_of :tagword
end
