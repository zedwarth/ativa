class Subscription < ActiveRecord::Base
  belongs_to  :user
  belongs_to  :project
end
