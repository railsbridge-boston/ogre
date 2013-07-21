class TeachingAssistant < ActiveRecord::Base
  OPERATING_SYSTEMS = ['Linux', 'Microsoft Windows', 'Mac OS X']
  EXPERIENCES = ['No Past Experience',
                 'Attended Previous Workshop',
                 'Assisted at Previous Workshop']
  validates :name, presence: true
  validates :email, presence: true
  validates :bio, presence: true
end
