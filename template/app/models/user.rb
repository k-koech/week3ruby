# user model 
class User < ActiveRecord::Base
    has_many :comments
    has_many :posts
 end

# post.rb
#  class Post < ActiveRecord::Base
#     has_many :comments
#     belongs_to :user
#  end



#  comment.rb
   # class Comment < ActiveRecord::Base
   #    belongs_to :user
   #    belongs_to :post
   # end