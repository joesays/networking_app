class Connection < ApplicationRecord
  # Direct associations

  belongs_to :location

  belongs_to :company

  has_many   :attendees,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
