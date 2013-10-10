class Project < ActiveRecord::Base
  belongs_to :phase
  has_many :posts
  before_save :set_phase_to_onboarding

  def set_phase_to_onboarding
    self.phase_id = Phase.first.id
  end
  
end
