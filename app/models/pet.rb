class Pet < ActiveRecord::Base
	belongs_to :doctor
	validates :name, :pet_type, :breed, :age, :weight, :last_visit, presence: true
	validates :age, numericality: true
	
	PET_TYPE = ["DOG", "CAT", "BIRD"]
end
