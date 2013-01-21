class Parent < ActiveRecord::Base
  

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :email, :first_name, :hometown, :last_name, :mobile_no, :occupation
end
