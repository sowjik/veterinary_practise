class Appointment < ActiveRecord::Base
	validates :date_of_visit, :pet, :customer, :reason, presence: true
end
