class Comment < ActiveRecord::Base
  belongs_to :question
  validates :text, :presence => true
  validates :author, :presence => true
end
