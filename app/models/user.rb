class User < ActiveRecord::Base
  attr_accessible :username, :password, :comments, :email
  has_many :posts
  has_many :comments
  has_many :post_votes
  has_many :comment_votes

  validates :email, :uniqueness => true

  def self.authenticate(email, password)
    user = User.find_by_email(email)
    if (!user.nil? && password == user.password)
      user
    else 
      nil
    end
  end

  # def upvote(post)
  #   PostVote.create.tap do |vote|
  #     vote.is_upvote = true
  #     vote.post = post
  #     vote.save
  #   end
  # end
end


