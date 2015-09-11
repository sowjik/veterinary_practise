class Doctor < ActiveRecord::Base
	has_many :pets
	validates_presence_of :name, :message => "Name can't be blank."
	validates_length_of :name, :within => 1..35, :too_short => 'Name can not be less than 3 characters long.', :too_long => 'Name can not be more than 50 characters long.'
	validates :zip,  numericality: true
	validates :years_in_practice,  numericality: true
end
