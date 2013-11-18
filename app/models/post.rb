class Post < ActiveRecord::Base
  attr_accessible :title
  belongs_to :user
  has_many :comments
  has_many :post_votes

  def getPoints
    upvote_count = PostVote.where("post_id = ? AND is_upvote = ?", self.id, true).count
    downvote_count = PostVote.where("post_id = ? AND is_upvote = ?", self.id, false).count

    points = upvote_count - downvote_count

    points
  end
end
