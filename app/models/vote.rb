class Vote < ApplicationRecord
  belongs_to :user
  
  validates :user_id, presence: true
  validates :category, presence: true
  
  def self.ranking
    self.group(@vote).order('count_vote DESC').count(@vote)
  end
end
