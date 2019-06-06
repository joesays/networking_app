class Meeting < ApplicationRecord
  # Direct associations

  belongs_to :location

  has_many   :attendees,
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

end
