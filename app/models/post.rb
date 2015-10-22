class Post < ActiveRecord::Base
  belongs_to :user
  has_many :contents
  validates :name, :presence => true
end
