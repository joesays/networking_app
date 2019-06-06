class Attendee < ApplicationRecord
  # Direct associations

  belongs_to :connection

  belongs_to :meeting

  # Indirect associations

  # Validations

end
