class Pin < ActiveRecord::Base
  attr_accessible :description, :string
  belongs_to :user

end
