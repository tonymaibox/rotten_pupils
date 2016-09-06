class Student < ActiveRecord::Base
	has_many :teachers, through: :ratings
	has_many :ratings
	has_many :comments, through: :ratings
end
