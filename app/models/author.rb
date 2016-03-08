# Class Author
class Author < ActiveRecord::Base
  has_many :articles
  validates :name, :email, presence: true
end
