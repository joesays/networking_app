class Connection < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  # Direct associations

  belongs_to :location

  belongs_to :company

  has_many   :attendees,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
