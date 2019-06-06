class Company < ApplicationRecord
  # Direct associations

  has_many   :connections,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
