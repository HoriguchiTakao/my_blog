class Post < ActiveRecord::Base
  belongs_to :admin
  paginates_per 10
end
