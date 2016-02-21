class Post < ActiveRecord::Base
  belongs_to :admin
  paginates_per 10
  has_many :comments
end
