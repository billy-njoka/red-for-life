class Staff < ActiveRecord::Base
  

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :email, :name, :staff_no
belongs_to :user, :dependent => :destroy
end
