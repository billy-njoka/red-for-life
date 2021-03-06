class Student < ActiveRecord::Base
  # Setup accessible (or protected) attributes for your model
attr_accessible :avatar
  has_attached_file :avatar, :styles => {
      :thumb => "75x75>",
      :small => "100x100>",
      :medium => "300x300>"
    }
attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :address1, :address2, :adm_date, :gender, :hometown, :kcpe, :first_name, :last_name, :reg_number, :religion
belongs_to :user, :dependent => :destroy

before_validation :create_student_user

def create_student_user
    if self.new_record?
      user = self.build_user
      user.first_name = self.first_name
      user.last_name = self.last_name
      user.username = self.reg_number.to_s
      user.password = self.reg_number.to_s + "123"
     # user_record.role = 'Student'
      user.email = self.email.blank? ? "" : self.email.to_s
    end
 end
end
