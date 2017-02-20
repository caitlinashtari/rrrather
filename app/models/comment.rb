class Comment < ActiveRecord::Base
  validates_presence_of :comment
  validates_presence_of :author
  belongs_to :answer
  belongs_to :question
end
