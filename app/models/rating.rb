class Rating < ActiveRecord::Base
  belongs_to :student, autosave: true
  belongs_to :teacher
  has_many :comments
  accepts_nested_attributes_for :comments, reject_if: proc {|attributes| attributes['content'].blank?}
  accepts_nested_attributes_for :student, reject_if: proc {|attributes| attributes['name'].blank?}
  # validates :student, presence: true

    def autosave_associated_records_for_celebrity
    # Find or create the student by name
      new_student = Student.find_or_create_by(name: student.name.downcase)
      self.student = new_student
  end
  
end
