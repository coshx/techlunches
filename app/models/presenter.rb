class Presenter < ActiveRecord::Base
  attr_accessible :email, :github_username, :name, :twitter_username

  has_many :presentations
end
