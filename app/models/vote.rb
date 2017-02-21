class Vote < ActiveRecord::Base
  validates_presence_of :selection
  belongs_to :question
end
