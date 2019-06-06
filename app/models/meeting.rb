class Meeting < ApplicationRecord
  # Direct associations

  has_many   :attendees,
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

end
