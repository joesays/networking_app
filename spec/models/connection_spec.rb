require 'rails_helper'

RSpec.describe Connection, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:company) }

    it { should have_many(:attendees) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
