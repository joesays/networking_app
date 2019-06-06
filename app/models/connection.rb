class Connection < ApplicationRecord
  # Direct associations

  has_many   :attendees,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
