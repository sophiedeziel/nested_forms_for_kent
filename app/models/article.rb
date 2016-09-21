class Article < ActiveRecord::Base
  validates_presence_of :title

  has_many :comments
  accepts_nested_attributes_for :comments

end
