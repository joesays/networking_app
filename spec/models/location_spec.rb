require 'rails_helper'

RSpec.describe Location, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:meetings) }

    it { should have_many(:connections) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
