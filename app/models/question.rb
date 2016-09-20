class Question < ActiveRecord::Base
  has_many :answers
  has_many :comments
  validates_associated :answers
  validates_associated :comments
  validates :text, :presence => true
  validates :author, :presence => true
end
