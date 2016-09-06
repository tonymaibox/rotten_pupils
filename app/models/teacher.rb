class Teacher < ActiveRecord::Base
	has_many :ratings
	has_many :students, through: :ratings
	has_many :comments
	# validates :name, presence: true, uniqueness: true
	# has_secure_password
end
