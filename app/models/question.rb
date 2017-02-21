class Question < ActiveRecord::Base
  validates_presence_of :author
  validates_presence_of :firstoption
  validates_presence_of :secondoption
  has_many :votes
  has_many :comments
end
