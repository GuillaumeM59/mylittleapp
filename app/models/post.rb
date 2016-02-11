class Post < ActiveRecord::Base
  belongs_to :user
  delegate :username, :avatar, :to => :user

  #validations
  validates :title, :content, :presence => true


end
