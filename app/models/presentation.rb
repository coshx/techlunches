class Presentation < ActiveRecord::Base
  attr_accessible :description, :title

  belongs_to :presenter
end
