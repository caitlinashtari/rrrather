class Answer < ActiveRecord::Base
  validates_presence_of :answer
  validates_presence_of :author
  belongs_to :question
end
